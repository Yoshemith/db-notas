DROP DATABASE IF EXISTS db_notas;
CREATE DATABASE db_notas;
USE db_notas;

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`usuario_id`));
  
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (1, 'Luis Lopez', 'lulo@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (2, 'Marcos Ruiz', 'marcru@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (3, 'Raul Jimenez', 'raulji@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (4, 'Marcus Radford', 'marcura@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (5, 'Kanye West', 'kwest@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (6, 'Frank Ocean', 'franocean@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (7, 'Scotch Mist', 'scotmi@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (8, 'Sigur Ros', 'sigu55@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (9, 'Kobe Bryant', 'kobo67@gmail.com');
INSERT INTO usuarios (usuario_id, nombre, email) VALUES (10, 'Lonzo Ball', 'loball33@gmail.com');

DROP TABLE IF EXISTS `categorias`;  
CREATE TABLE `categorias` (
  `categoria_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`categoria_id`));

INSERT INTO categorias (categoria_id, nombre) VALUES (1,'Economia');
INSERT INTO categorias (categoria_id, nombre) VALUES (2,'Belleza');
INSERT INTO categorias (categoria_id, nombre) VALUES (3,'Deportes');
INSERT INTO categorias (categoria_id, nombre) VALUES (4,'Filosofia');
INSERT INTO categorias (categoria_id, nombre) VALUES (5,'Animacion');
INSERT INTO categorias (categoria_id, nombre) VALUES (6,'Politica');
INSERT INTO categorias (categoria_id, nombre) VALUES (7,'Global');
INSERT INTO categorias (categoria_id, nombre) VALUES (8,'Tecnologia');
INSERT INTO categorias (categoria_id, nombre) VALUES (9,'Musica');
INSERT INTO categorias (categoria_id, nombre) VALUES (10,'Marketing');

DROP TABLE IF EXISTS `notas`;  
CREATE TABLE `notas` (
  `nota_id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATETIME NOT NULL,
  `fecha_mod` DATETIME NOT NULL,
  `descripcion` TEXT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`nota_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`usuario_id`));
  
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (1, 'Tema qwertyuiop', '2020-11-18', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 10);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (2, 'Tema adfdsfgdgsdfgdfg', '2019-07-19', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 9);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (3, 'Tema dfsfsdfsdfsd', '2021-07-18', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 8);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (4, 'Tema ghkghjmbnvbnvbn', '2020-06-20', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 7);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (5, 'Tema zdsdgdfshgdh', '2019-11-12', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 6);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (6, 'Tema qaswedfrtg', '2021-01-13', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 5);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (7, 'Tema pouugdfs', '2020-05-12', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 4);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (8, 'Tema qasxwfvth', '2019-07-10', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 3);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (9, 'Tema qwsfrthyuu', '2018-07-12', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 2);
INSERT INTO notas (nota_id, titulo, fecha_creacion, fecha_mod, descripcion, user_id) VALUES (10, 'Tema vfrggtbhthy', '2021-06-16', '2021-10-10', 'Descripcion random ifjhrjihwjehkjrhktjhrkjthwerklhtkwerjhtkjrhtkjwerhtkjhrtkjwerhtlkjh.', 1);


DROP TABLE IF EXISTS `categorias_x_nota`;  
CREATE TABLE `categorias_x_nota` (
  `cat_nota_id` INT NOT NULL AUTO_INCREMENT,
  `id_nota` INT NOT NULL,
  `id_categoria` INT NOT NULL,
  PRIMARY KEY (`cat_nota_id`),
  CONSTRAINT `id_nota_fk` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`nota_id`),
  CONSTRAINT `id_categoria_fk` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`categoria_id`));
  
    
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (1, 1, 10);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (2, 2, 9);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (3, 3, 8);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (4, 4, 7);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (5, 5, 6);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (6, 6, 5);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (7, 7, 4);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (8, 8, 3);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (9, 9, 2);
INSERT INTO categorias_x_nota (cat_nota_id, id_nota, id_categoria) VALUES (10, 10, 1);