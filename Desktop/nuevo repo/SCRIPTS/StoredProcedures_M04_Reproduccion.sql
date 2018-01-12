<<<<<<< HEAD

=======
﻿
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
CREATE OR REPLACE FUNCTION videoinfo(fitrovideo int) 
    RETURNS table(title varchar,url varchar,visitas int,likes int,owner varchar,idowner int, subscripciones int) AS $$
        
       DECLARE 
        var record;
        begin
     
        FOR var in (SELECT v.vid_titulo title , v.vid_url url, v.vid_visitas visitas, 
(SELECT count(li.id_video) from likes li where li.id_video = v.vid_id )likes, 
u.usu_login "owner", u.usu_id idowner, 
u.usu_avatar imgowner,
( select count(su.id_suscripcion) from suscripcion su where su.id_suscripcion = u.usu_id)subscripciones 
FROM video v, usuario u
WHERE v.vid_id = fitrovideo 
AND v.vid_usuario = u.usu_id)
        LOOP 
        title:= var.title;
        url := var.url;
        visitas := var.visitas;
        likes := var.likes;
        owner := var.owner;
        idowner := var.idowner;
        subscripciones := var.subscripciones;
	
        RETURN NEXT;
        END LOOP;
        end;$$
    
     LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getVideosRelacionados(fitrovideo int) 
    RETURNS table(id int,urlimg varchar,nombre varchar,canal varchar) AS $$
        
       DECLARE 
        var record;
        begin
     
        FOR var in (SELECT video.vid_id id, video.vid_titulo nombre, video.vid_imagen urlimg, usuario.usu_login canal
from video inner join video_cat on video.vid_id = video_cat.idvid  , usuario
where video_cat.idcat IN (SELECT video_cat.idcat from video_cat WHERE video_cat.idvid = fitrovideo) 
and video.vid_id <> fitrovideo and usuario.usu_id = video.vid_usuario)
        LOOP 
        id:= var.id;
        urlimg := var.urlimg;
        nombre := var.nombre;
        canal := var.canal;
	
        RETURN NEXT;
        END LOOP;
        end;$$
    
     LANGUAGE plpgsql;

<<<<<<< HEAD
CREATE OR REPLACE FUNCTION getComentarios(fitrovideo int) 
    RETURNS table(iduser int,urlimg varchar,nombre varchar,comentario varchar, correo varchar, idcomentario int) AS $$
=======

CREATE OR REPLACE FUNCTION getComentarios(fitrovideo int) 
    RETURNS table(iduser int,urlimg varchar,nombre varchar,comentario varchar) AS $$
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
        
       DECLARE 
        var record;
        begin
     
<<<<<<< HEAD
        FOR var in (SELECT usuario.usu_id iduser, usuario.usu_avatar urlimg , usuario.usu_login nombre , comentario.com_descripcion comentario , usuario.usu_correo correo, comentario.com_id idcomentario
FROM comentario , usuario
WHERE comentario.id_vid = fitrovideo AND comentario.id_usu = usuario.usu_id)
        LOOP 
        iduser := var.iduser;
        correo := var.correo;
        urlimg := var.urlimg;
        nombre := var.nombre;
        idcomentario := var.idcomentario;
=======
        FOR var in (SELECT usuario.usu_id iduser, usuario.usu_avatar urlimg , usuario.usu_login nombre , comentario.com_descripcion comentario
FROM comentario , usuario
WHERE comentario.id_vid = 1 AND comentario.id_usu = usuario.usu_id)
        LOOP 
        iduser:= var.iduser;
        urlimg := var.urlimg;
        nombre := var.nombre;
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
        comentario := var.comentario;
	
        RETURN NEXT;
        END LOOP;
        end;$$
    
     LANGUAGE plpgsql;
<<<<<<< HEAD

=======
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
	 
 CREATE OR REPLACE FUNCTION addVisita(id INT) 
    RETURNS void AS $$
    BEGIN

  UPDATE video SET vid_visitas = vid_visitas + 1 where vid_id = id;
      
    END;
    $$ LANGUAGE plpgsql;
	
<<<<<<< HEAD

=======
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
    CREATE OR REPLACE FUNCTION addComentario
 ( idvideo INT, correo varchar, comenta varchar)
 RETURNS int AS $$
 DECLARE  idcomentario int ;
begin

INSERT INTO comentario (com_descripcion,com_id,id_usu,id_vid) VALUES
	(comenta, (SELECT max(com_id)+1 from comentario), 
	(SELECT usu_id from usuario where usu_correo = correo), idvideo);
      
  SELECT max(com_id) INTO idcomentario FROM comentario where com_descripcion = comenta and id_vid = idvideo; 
 return idcomentario;
end;
$$ LANGUAGE 'plpgsql';


    CREATE OR REPLACE FUNCTION updateLike(idvideo INT, correo varchar)
<<<<<<< HEAD
 RETURNS void AS $$
=======
 RETURNS int  AS $$
>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
 DECLARE  idusuario int;
 DECLARE cuenta int;
begin

SELECT usu_id INTO idusuario FROM usuario where usu_correo = correo;

SELECT count(*) INTO cuenta FROM likes where id_usuario = idusuario AND id_video = idvideo;

IF (cuenta > 0) THEN
	DELETE FROM likes WHERE id_usuario = idusuario AND id_video = idvideo;
ELSE
	INSERT INTO likes (id_video,id_usuario) VALUES (idvideo, idusuario);
END IF;

<<<<<<< HEAD
end;
$$ LANGUAGE 'plpgsql';

=======
SELECT count(*) INTO cuenta FROM likes where id_video = idvideo;

return cuenta;

end;
$$ LANGUAGE 'plpgsql';


>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
    CREATE OR REPLACE FUNCTION getIfLike
 ( idvideo INT, correo varchar)
 RETURNS int AS $$
 DECLARE  cuenta int ;
begin
      
  SELECT count(*) INTO cuenta FROM likes where id_usuario = (SELECT usu_id from usuario where usu_correo = correo) and id_video = idvideo;
   
 return cuenta;
end;
$$ LANGUAGE 'plpgsql';


    CREATE OR REPLACE FUNCTION deleteComentario
 ( idcom INT)
 RETURNS int AS $$
 DECLARE  cuenta int ;
begin
      
  DELETE FROM comentario WHERE com_id = idcom;

  SELECT count(*) INTO cuenta FROM comentario where com_id = idcom;
   
 return cuenta;
end;
$$ LANGUAGE 'plpgsql';


<<<<<<< HEAD
=======

>>>>>>> 301d78c046dbed5cedec429495417e1a670d4e94
