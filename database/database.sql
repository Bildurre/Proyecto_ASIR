DROP DATABASE IF EXISTS proyecto;
CREATE DATABASE proyecto;
USE proyecto;

CREATE TABLE IF NOT EXISTS productos (
  id_producto CHAR(5) NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(300) NOT NULL,
  tipo ENUM('pomada', 'crema', 'aceite', 'tintura', 'cacao') NOT NULL,
  PRIMARY KEY (id_producto)
);

CREATE TABLE IF NOT EXISTS tamanios (
  volumen SMALLINT UNSIGNED NOT NULL,
  stock TINYINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (volumen)
);

CREATE TABLE IF NOT EXISTS formatos (
  id_formato INT UNSIGNED AUTO_INCREMENT NOT NULL,
  volumen SMALLINT UNSIGNED NOT NULL,
  id_producto CHAR(5) NOT NULL,
  precio SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  stock TINYINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id_formato),
  FOREIGN KEY (volumen) REFERENCES tamanios(volumen)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario INT UNSIGNED AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  contrasenia VARCHAR(32) NOT NULL,
  telefono INT UNSIGNED,
  PRIMARY KEY (id_usuario)
);

CREATE TABLE IF NOT EXISTS pedidos (
  id_pedido INT UNSIGNED AUTO_INCREMENT NOT NULL,
  id_usuario INT UNSIGNED,
  fecha DATE NOT NULL,
  estado ENUM('en espera', 'preparado', 'entregado') NOT NULL,
  PRIMARY KEY (id_pedido),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS listas_pedidos (
  id_pedido INT UNSIGNED NOT NULL,
  id_formato INT UNSIGNED NOT NULL,
  cantidad TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (id_pedido, id_formato),
  FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_formato) REFERENCES formatos(id_formato)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS administrador (
  nombre CHAR(11),
  contra VARCHAR(32),
  PRIMARY KEY (nombre)
);
