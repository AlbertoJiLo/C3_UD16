use actividades;

/*4.1*/ SELECT nombre FROM peliculas;

/*4.2*/ SELECT calificacionedad FROM peliculas GROUP BY calificacionedad;

/*4.3*/ SELECT nombre FROM peliculas WHERE calificacionedad IS NULL;

/*4.4*/ SELECT nombre FROM salas WHERE pelicula IS NULL;

/*4.5*/ SELECT * FROM salas INNER JOIN peliculas ON salas.pelicula=peliculas.codigo;

/*4.6*/ SELECT * FROM peliculas INNER JOIN salas ON peliculas.codigo=salas.pelicula;

/*4.7*/ SELECT peliculas.nombre FROM peliculas LEFT JOIN salas ON salas.pelicula=peliculas.codigo WHERE salas.pelicula IS NULL;

/*4.8*/ INSERT INTO  peliculas(codigo,nombre,calificacionedad) VALUES ('10','Uno, Dos, Tres', 'G');

/*4.9*/ UPDATE  peliculas SET calificacionedad='PG-13' WHERE calificacionedad IS NULL;

/*4.10*/ DELETE FROM salas WHERE pelicula IN (SELECT codigo FROM peliculas WHERE calificacionedad='G') ;