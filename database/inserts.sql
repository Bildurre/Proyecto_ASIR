USE proyecto;

-- ---- PRODUCTOS ---- --

INSERT INTO productos VALUES ('PO001', 'Tatuajes', 'Acción regeneradora, hidratante, antivírica,
  antibacteriana y antiinfecciosa.', 'pomada');

INSERT INTO productos VALUES ('PO002', 'Heridas y afecciones cutáneas', 'Para picor, quemaduras,
  heridas, infecciones, ampollas, sabañones. Acción regeneradora, antiinfecciosa, cicatrizante,
  hidratante, clamante, antiséptica y antiinflamatoria.', 'pomada');

INSERT INTO productos VALUES ('PO003', 'Fungicida', 'Combate los hongos de la piel y mucosas.
  Para los pies, vagina, etc.', 'pomada');

INSERT INTO productos VALUES ('PO004', 'Bálsamo', 'Para golpes, retorcijones, esguinces, dolor muscular,
catarro, ronquidos, mocos. Acción circulatoria, analgésica, antiinflamatoria, expectorante.', 'pomada');

INSERT INTO productos VALUES ('PO005', 'Hemorroides', 'Acción astringente, regeneradora, circulatoria.
  Especial para acabar con las hemorroides.', 'pomada');

INSERT INTO productos VALUES ('CR001', 'Piel Mixta', 'Elaborada en una base de aceite de karité
  y aceite de caléndula. Con las particularidades propias de los distintos aceites esenciales
  elejidos para cada tipo de piel.', 'crema');

INSERT INTO productos VALUES ('CR002', 'Piel Con Acné', 'Elaborada en una base de aceite de karité
  y aceite de caléndula. Con las particularidades propias de los distintos aceites esenciales
  elejidos para cada tipo de piel.', 'crema');

INSERT INTO productos VALUES ('CR003', 'Piel Seca', 'Elaborada en una base de aceite de karité
  y aceite de caléndula. Con las particularidades propias de los distintos aceites esenciales
  elejidos para cada tipo de piel.', 'crema');

INSERT INTO productos VALUES ('CR004', 'Piel Madura', 'Elaborada en una base de aceite de karité
  y aceite de caléndula. Con las particularidades propias de los distintos aceites esenciales
  elejidos para cada tipo de piel.', 'crema');

INSERT INTO productos VALUES ('AC001', 'Canela y Naranja', 'Hidratante, antiinflamatorio, antiséptico,
  antibacteriano, desodorante, anticelulítico, tratamiento del acné y las arrugas, tónico, afrodisíaco,
  da sensación de bienestar.', 'aceite');

INSERT INTO productos VALUES ('AC002', 'Ylang Ylang y Bergamota', 'Hidratante, regenerador, antiséptico.
  Tratamiento del acné, estrias y arrugas. Circulatorio, afrodisíaco, da sensación de bienestar.
  Tranquilizante, para el insomnio y la ansiedad.', 'aceite');

INSERT INTO productos VALUES ('AC003', 'Varices', 'Circulatorio, regenerador y astringente.',
  'aceite');

INSERT INTO productos VALUES ('AC004', 'Hipérico', 'Anestésico local y antiinflamatorio, analgésico,
  regenerador, circulatorio. Para golpes, reuma, dolor muscular, quemaduras, heridas, varices,
  hemorroides, inflamación, otitis.', 'aceite');

INSERT INTO productos VALUES ('AC005', 'Repelente de Insectos', 'Mezcla de distintos aceites 
  esenciales en una base de aceite de almendras dulces. Repele insectos al mismo tiempo que 
  hidrata y tonifica la piel.', 'aceite');

INSERT INTO productos VALUES ('TI001', 'Regulador Hormonal', 'Para combatir desajustes en la
  segregacion hormonal del cuerpo.', 'tintura');

INSERT INTO productos VALUES ('TI002', 'Alergia', 'Para aliviar y mitigar los sintomas de alergias 
  leves.', 'tintura');

INSERT INTO productos VALUES ('TI003', 'Tila', 'Relajante y sedante. Para enfermedades o sintomas 
nerviosos. Para el insomnio, cansancio, estrés, dolores relacionados con alteraciones nerviosas.',
  'tintura');

INSERT INTO productos VALUES ('CA001', 'Herpes', 'Para combatir y mitigar el efecto de herpes labiales.', 'cacao');

INSERT INTO productos VALUES ('CA002', 'Hidratante', 'Para combatir la sequedad y los labios agrietados', 'cacao');


-- ---- TAMANIOS ---- --

INSERT INTO tamanios VALUES (60, 10);
INSERT INTO tamanios VALUES (30, 15);
INSERT INTO tamanios VALUES (150, 8);
INSERT INTO tamanios VALUES (15, 13);
INSERT INTO tamanios VALUES (250, 13);


-- ---- FORMATOS ---- --

INSERT INTO formatos VALUES (NULL, 60, 'PO001', 800, 4);
INSERT INTO formatos VALUES (NULL, 60, 'PO002', 800, 3);
INSERT INTO formatos VALUES (NULL, 60, 'PO003', 800, 5);
INSERT INTO formatos VALUES (NULL, 60, 'PO004', 800, 4);
INSERT INTO formatos VALUES (NULL, 60, 'PO005', 800, 7);

INSERT INTO formatos VALUES (NULL, 30, 'PO001', 600, 5);
INSERT INTO formatos VALUES (NULL, 30, 'PO002', 600, 6);
INSERT INTO formatos VALUES (NULL, 30, 'PO003', 600, 5);
INSERT INTO formatos VALUES (NULL, 30, 'PO004', 600, 3);
INSERT INTO formatos VALUES (NULL, 30, 'PO005', 600, 8);

INSERT INTO formatos VALUES (NULL, 60, 'CR001', 1400, 3);
INSERT INTO formatos VALUES (NULL, 60, 'CR002', 1400, 3);
INSERT INTO formatos VALUES (NULL, 60, 'CR003', 1400, 5);
INSERT INTO formatos VALUES (NULL, 60, 'CR004', 1400, 7);

INSERT INTO formatos VALUES (NULL, 150, 'CR001', 2200, 2);
INSERT INTO formatos VALUES (NULL, 150, 'CR002', 2200, 3);
INSERT INTO formatos VALUES (NULL, 150, 'CR003', 2200, 4);
INSERT INTO formatos VALUES (NULL, 150, 'CR004', 2200, 6);

INSERT INTO formatos VALUES (NULL, 150, 'AC001', 1600, 2);
INSERT INTO formatos VALUES (NULL, 150, 'AC002', 1600, 4);
INSERT INTO formatos VALUES (NULL, 150, 'AC003', 1600, 5);
INSERT INTO formatos VALUES (NULL, 150, 'AC004', 1600, 3);
INSERT INTO formatos VALUES (NULL, 150, 'AC005', 1600, 6);

INSERT INTO formatos VALUES (NULL, 250, 'AC001', 2500, 2);
INSERT INTO formatos VALUES (NULL, 250, 'AC002', 2500, 3);
INSERT INTO formatos VALUES (NULL, 250, 'AC003', 2500, 4);
INSERT INTO formatos VALUES (NULL, 250, 'AC004', 2500, 3);
INSERT INTO formatos VALUES (NULL, 250, 'AC005', 2500, 5);

INSERT INTO formatos VALUES (NULL, 30, 'TI001', 1500, 3);
INSERT INTO formatos VALUES (NULL, 30, 'TI002', 1500, 2);
INSERT INTO formatos VALUES (NULL, 30, 'TI002', 1500, 3);

INSERT INTO formatos VALUES (NULL, 15, 'CA001', 350, 5);
INSERT INTO formatos VALUES (NULL, 15, 'CA002', 350, 8);


-- ---- USUARIOS ---- --

INSERT INTO usuarios VALUES (NULL, 'Ana', 'Zabala', 'ana@zabala.com', MD5('12345678'), 666666666);
INSERT INTO usuarios VALUES (NULL, 'Jon', 'Ancho', 'jon@ancho.com', MD5('12345678'), 777777777);
INSERT INTO usuarios VALUES (NULL, 'Jon', 'Delgado', 'jon@delgado.com', MD5('12345678'), 888888888);


-- ---- PEDIDOS ---- --

INSERT INTO pedidos VALUES (1, '2022-11-12', 'entregado');
INSERT INTO pedidos VALUES (1, '2022-11-17', 'entregado');
INSERT INTO pedidos VALUES (1, '2022-12-15', 'entregado');

INSERT INTO pedidos VALUES (2, '2022-12-25', 'entregado');
INSERT INTO pedidos VALUES (2, '2023-01-8', 'preparado');

INSERT INTO pedidos VALUES (3, '2022-12-19', 'entregado');
INSERT INTO pedidos VALUES (3, '2022-12-27', 'entregado');
INSERT INTO pedidos VALUES (3, '2022-01-9', 'en espera');

-- ---- LISTAS_PEDIDOS ---- --

INSERT INTO listas_pedidos VALUES (1, 3, 1);
INSERT INTO listas_pedidos VALUES (1, 12, 1);
INSERT INTO listas_pedidos VALUES (1, 24, 1);
INSERT INTO listas_pedidos VALUES (1, 33, 2);

INSERT INTO listas_pedidos VALUES (2, 5, 2);
INSERT INTO listas_pedidos VALUES (2, 11, 2);
INSERT INTO listas_pedidos VALUES (2, 23, 1);
INSERT INTO listas_pedidos VALUES (2, 4, 3);

INSERT INTO listas_pedidos VALUES (3, 26, 1);
INSERT INTO listas_pedidos VALUES (3, 4, 2);

INSERT INTO listas_pedidos VALUES (4, 11, 1);
INSERT INTO listas_pedidos VALUES (4, 28, 2);
INSERT INTO listas_pedidos VALUES (4, 32, 1);

INSERT INTO listas_pedidos VALUES (5, 3, 1);
INSERT INTO listas_pedidos VALUES (5, 20, 1);

INSERT INTO listas_pedidos VALUES (6, 3, 1);
INSERT INTO listas_pedidos VALUES (6, 27, 1);
INSERT INTO listas_pedidos VALUES (6, 33, 2);

INSERT INTO listas_pedidos VALUES (7, 33, 3);