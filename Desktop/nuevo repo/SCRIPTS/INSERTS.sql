<<<<<<< HEAD
﻿INSERT INTO USUARIO VALUES (1, 'sevelindoparado', '123456789', 'leToken', false, 'seve@gmail.com');
INSERT INTO USUARIO VALUES (2, 'edver', '12345', 'any shit', false, 'edvergalin@gmail');
INSERT INTO USUARIO VALUES (4, 'betoreveron', '12345', 'cualquier vaina', false, 'beto@gmail');


=======

INSERT INTO USUARIO VALUES (10, 'usuarioPruebas', '12345', 'cualquier usuario', true, 'usuarioPrueba@gmail');
﻿INSERT INTO USUARIO VALUES (1, 'Estefania Perez', '12345', 'token3', true, 'esteperez@gmail.com','https://image.ibb.co/dzGNbm/metallica_Perfil.jpg');
INSERT INTO USUARIO VALUES (2, 'Barbara Fernandez', '12345', 'token', false, 'barbie1@gmail.com','https://image.ibb.co/dzGNbm/metallica_Perfil.jpg');
INSERT INTO USUARIO VALUES (3, 'Jose Dos Ramos', '12345', 'token2', false, 'jostin@gmail.com','https://image.ibb.co/enaJhR/ironmaiden.jpg');
INSERT INTO USUARIO VALUES (4, 'betoreveron', '12345', 'cualquier vaina', false, 'beto@gmail');


INSERT INTO VIDEO VALUES (1, 'Nothing else matters','Derechos Reservados','https://image.ibb.co/hBPB2R/metallicaimagenvideo.jpg','https://www.youtube.com/watch?v=HyrWd_gfQNQ','2017-11-01',100,2);
INSERT INTO VIDEO VALUES (2, 'I want my tears back','Derechos Reservados','https://image.ibb.co/cGjN96/nigthwish.jpg','https://www.youtube.com/watch?v=LaGyduQBh7M','2017-11-02',99,2);
INSERT INTO VIDEO VALUES (3, 'Run to the Hills','Derechos Reservados','https://image.ibb.co/enaJhR/ironmaiden.jpg','https://www.youtube.com/watch?v=LaGyduQBh7M','2017-11-03',98,2);
INSERT INTO VIDEO VALUES (4, 'El rubius hola','Derechos Reservados','https://image.ibb.co/ibzEp6/rubius.jpg','https://www.youtube.com/watch?v=LaGyduQBh7M','2017-11-04',50,2);
INSERT INTO VIDEO VALUES (5, 'Master of Puppets','Derechos Reservados','https://image.ibb.co/dzGNbm/metallica_Perfil.jpg','https://www.youtube.com/watch?v=HyrWd_gfQNQ','2017-11-05',95,2);
INSERT INTO VIDEO VALUES (6, 'Aqui no hay quien Viva 1x01','Derechos Reservados','https://image.ibb.co/kDab2R/anhqv.jpg','https://www.youtube.com/watch?v=LaGyduQBh7M','2017-11-07',90,2);
INSERT INTO VIDEO VALUES (7, 'Caracas armas de Fuego','Derechos Reservados','https://image.ibb.co/enaJhR/ironmaiden.jpg','https://www.youtube.com/watch?v=LaGyduQBh7M','2017-11-10',80,2);
INSERT INTO VIDEO VALUES (8, 'Fear of the Dark','Derechos Reservados','https://image.ibb.co/enaJhR/ironmaiden.jpg','https://www.youtube.com/watch?v=LaGyduQBh7M','2017-01-10',80,2);


insert into categoria values (1,'comedia');
insert into categoria values (2,'suspenso');
insert into categoria values (3,'romantico');
insert into categoria values (4,'ciencia ficcion');
insert into categoria values (5,'armas');
insert into categoria values (6,'tutoriales');
insert into categoria values (7,'metal');

insert into video_cat values (1,1);
insert into video_cat values (3,4);
insert into video_cat values (2,6);
insert into video_cat values (5,2);
insert into video_cat values (6,5);
insert into video_cat values (7,5);
insert into video_cat values (1,7);
insert into video_cat values (2,7);
insert into video_cat values (8,7);
insert into video_cat values (8,5);

--Usuario con categoria
insert into preferencia values (1,1);
insert into preferencia values (1,2);
insert into preferencia values (2,6);
insert into preferencia values (1,7);

--Usuario con usuario (SUSCRIPCION)
insert into suscripcion values (1,2);

--ETIQUETA
insert into etiqueta values (1,'armas');
insert into etiqueta values (2,'metal');

--VIDEO CON ETIQUETA
INSERT INTO video_etiq VALUES (8,1);
insert into video_etiq values (8,2);

INSERT INTO LISTA_REPRODUCCION values (1,'Lista de pasados', 'what',null, 25, '2018/01/11', 4);
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
INSERT INTO LISTA_REPRODUCCION values (50,'Lista de sancionados', 'what',null, 25, '2017/12/15', 4);
INSERT INTO lista_reproduccion values (60,'Lista de sancionados2.0', 'what2',null, 45, '2017/12/24', 4);
INSERT INTO LISTA_REPRODUCCION values (70,'Lista de sancionados3.0', 'what3',null, 65, '2017/12/31', 4);


<<<<<<< HEAD
INSERT INTO VIDEO values (1,'PASAMOS DESARROLLO', 'Pasando desarrollo','goo.gl', 'youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (2,'PASAMOS', 'Pasando ','goo.gl', 'youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (3,'PASAMOS 3', 'Pasando 3','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (4,'PASAMOS 4', 'Pasando 4','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (5,'PASAMOS 5', 'Pasando 5','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (6,'PASAMOS 6', 'Pasando 6','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (7,'PASAMOS 7', 'Pasando 7','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
=======

INSERT INTO VIDEO values (11,'PASAMOS DESARROLLO', 'Pasando desarrollo','goo.gl', 'youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (12,'PASAMOS', 'Pasando ','goo.gl', 'youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (13,'PASAMOS 3', 'Pasando 3','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (14,'PASAMOS 4', 'Pasando 4','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (15,'PASAMOS 5', 'Pasando 5','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (16,'PASAMOS 6', 'Pasando 6','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (17,'PASAMOS 7', 'Pasando 7','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);
INSERT INTO VIDEO values (10,'PASAMOS 10', 'Pasando 10','goo.gl','youtube.com/123', '2018/01/11', 777 , 4);

>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94

INSERT INTO VIDEO_LISTA values (1,50);
INSERT INTO VIDEO_LISTA values (2,50);
INSERT INTO VIDEO_LISTA values (3,50);
INSERT INTO VIDEO_LISTA values (4,60);
INSERT INTO VIDEO_LISTA values (5,60);
INSERT INTO VIDEO_LISTA values (6,60);
INSERT INTO VIDEO_LISTA values (7,60);
<<<<<<< HEAD
=======
INSERT INTO VIDEO_LISTA values (10,50);
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94


