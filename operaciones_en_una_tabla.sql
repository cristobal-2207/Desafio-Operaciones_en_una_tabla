/* Desafío - Operaciones en una tabla
Para realizar este desafío debes haber estudiado previamente todo el material disponibilizado en
la sesión online correspondiente a la unidad.
Una vez terminado el desafío, comprime la carpeta y sube el .zip*/

--Instrucciones
--Parte 1
--1. Crear Base de datos posts (1 punto)
CREATE DATABASE posts;

--Ahora que está creada la base de datos llamada posts, me cambiaré a esta con \c posts;
\c posts

--Estando en la base de datos deseada, realizaré la instrucción 2:
--2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción (1 punto)
CREATE TABLE post(
    id INT PRIMARY KEY,
    name_user VARCHAR(25),
    creation_date DATE,
    content VARCHAR(500),
    descrip VARCHAR (500)

);

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" (0.6 puntos)
--1er post para Pamela
INSERT INTO post(id, name_user, creation_date, content, descrip) VALUES(1, 'Pamela', '2020-06-22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

--2do post para Pamela
INSERT INTO post(id, name_user, creation_date, content, descrip) VALUES(2, 'Pamela', '2020-06-23', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

--1er post para Carlos
INSERT INTO post(id, name_user, creation_date, content, descrip) VALUES(3, 'Carlos', '2020-06-23', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');


--4. Modificar la tabla post, agregando la columna título (1 punto)
ALTER TABLE post ADD title VARCHAR(50);

--5. Agregar título a las publicaciones ya ingresadas (1 punto)
UPDATE post SET title='Mi primer post' WHERE id=1;
UPDATE post SET title='Mi segundo post' WHERE id=2;
UPDATE post SET title='Yo soy Carlos' WHERE id=3;

--6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)
INSERT INTO post(id, name_user, creation_date, content, descrip, title) VALUES(4, 'Pedro', '2020-06-24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Hola mundo');
INSERT INTO post(id, name_user, creation_date, content, descrip, title) VALUES(5, 'Pedro', '2020-06-25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Pero pa que po');

--7. Eliminar el post de Carlos (1 punto)
DELETE FROM post WHERE name_user='Carlos';

--8. Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)
INSERT INTO post(id, name_user, creation_date, content, descrip, title) VALUES(6, 'Carlos', '2020-06-26', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Me arrepentí y volví.');

--Parte 2
--9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido que se relacione con la tabla posts. (1 punto)
CREATE TABLE comments(
    post_id INT,
    date_and_time TIMESTAMP,
    content VARCHAR(500),
    FOREIGN KEY(post_id) REFERENCES post(id)
);

--10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" (0.4 puntos)
--Comentarios a los post de Pamela.
INSERT INTO comments(post_id, date_and_time, content) VALUES(1, '2020-06-22 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(2, '2020-06-22 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

--Comentarios a los post de Carlos.
INSERT INTO comments(post_id, date_and_time, content) VALUES(6, '2020-06-23 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(6, '2020-06-24 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(6, '2020-06-25 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(6, '2020-06-26 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

--11. Crear un nuevo post para "Margarita" (1 punto)
INSERT INTO post(id, name_user, creation_date, content, descrip, title) VALUES(7, 'Margarita', '2020-06-27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Agregame a tus followers.');

--12. Ingresar 5 comentarios para el post de Margarita. (1 punto) */
INSERT INTO comments(post_id, date_and_time, content) VALUES(7, '2020-06-27 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(7, '2020-06-28 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(7, '2020-06-29 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(7, '2020-06-30 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO comments(post_id, date_and_time, content) VALUES(7, '2020-07-01 10:41:19.202914+02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');