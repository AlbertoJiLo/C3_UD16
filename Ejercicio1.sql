use actividades;

/*1.1*/ SELECT nombre FROM articulos;

/*1.2*/ SELECT nombre,precio FROM articulos;

/*1.3*/ SELECT nombre FROM articulos WHERE precio<200; 

/*1.4*/ SELECT * FROM articulos WHERE (precio BETWEEN 60 AND 120); 

/*1.5*/ SELECT nombre,(precio*166.386) FROM articulos; 

/*1.6*/ SELECT AVG(precio) FROM articulos;

/*1.7*/ SELECT AVG(precio) FROM articulos WHERE fabricante=2;

/*1.8*/ SELECT COUNT(precio) FROM articulos WHERE precio>=180;

/*1.9*/ SELECT nombre,precio FROM articulos WHERE precio>=180 ORDER BY precio DESC,nombre ASC;

/*1.10*/ SELECT articulos.*,fabricantes.nombre FROM articulos INNER JOIN fabricantes ON fabricantes.codigo=articulos.fabricante;

/*1.11*/ SELECT articulos.nombre,articulos.precio,fabricantes.nombre FROM articulos INNER JOIN fabricantes ON fabricantes.codigo=articulos.fabricante;

/*1.12*/ SELECT AVG(articulos.precio),fabricantes.codigo FROM articulos INNER JOIN fabricantes ON fabricantes.codigo=articulos.fabricante GROUP BY fabricantes.codigo;

/*1.13*/ SELECT AVG(articulos.precio),fabricantes.nombre FROM articulos INNER JOIN fabricantes ON fabricantes.codigo=articulos.fabricante GROUP BY fabricantes.nombre;

/*1.14*/ SELECT fabricantes.nombre FROM articulos INNER JOIN fabricantes ON fabricantes.codigo=articulos.fabricante GROUP BY fabricantes.nombre HAVING AVG(articulos.precio)>=150;

/*1.15*/ SELECT nombre,precio FROM articulos WHERE precio=(SELECT MIN(precio) FROM articulos);

/*1.16*/ SELECT articulos.nombre,articulos.precio,fabricantes.nombre 
				FROM articulos,fabricantes WHERE articulos.fabricante=fabricantes.codigo AND
                articulos.precio=(SELECT MAX(articulos.precio) FROM articulos WHERE articulos.fabricante=fabricantes.codigo);
                
/*1.17*/ INSERT INTO articulos (codigo,nombre,precio,fabricante) VALUES ('11','Altavoces','70','2');

/*1.18*/ UPDATE articulos SET nombre='Impresora laser' WHERE codigo=8;

/*1.19*/ UPDATE articulos SET precio = precio *0.9;

/*1.20*/ UPDATE articulos SET precio = precio-10 WHERE precio>=120 ;