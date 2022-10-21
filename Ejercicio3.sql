use actividades;

/*3.1*/ SELECT * FROM almacenes;

/*3.2*/ SELECT * FROM cajas WHERE valor>150;

/*3.3*/ SELECT DISTINCT contenido FROM cajas;

/*3.4*/ SELECT AVG(valor) FROM cajas;

/*3.5*/ SELECT almacen,AVG(valor) FROM cajas GROUP BY almacen;

/*3.6*/ SELECT almacen,AVG(valor) FROM cajas GROUP BY almacen HAVING AVG(valor)>150;

/*3.7*/ SELECT numreferencia,lugar FROM cajas INNER JOIN almacenes ON almacenes.codigo = cajas.almacen;

/*3.8*/ SELECT almacen, COUNT(numreferencia) FROM cajas GROUP BY almacen;

/*3.9*/ SELECT codigo FROM almacenes WHERE capacidad < (SELECT COUNT(numreferencia) FROM cajas WHERE almacen=codigo);

/*3.10*/ SELECT numreferencia FROM cajas WHERE almacen IN (SELECT codigo FROM almacenes WHERE lugar='Bilbao');

/*3.11*/ INSERT INTO almacenes(codigo,lugar,capacidad) VALUES ('6','Barcelona','3');

/*3.12*/ INSERT INTO cajas(numreferencia,contenido,valor,almacen) VALUES ('H5RT','Papel','200','2');

/*3.13*/ UPDATE cajas SET valor = valor *0.85;

/*3.14*/ UPDATE cajas SET valor = valor *0.80 WHERE valor IN (SELECT AVG(valor) FROM cajas WHERE valor<AVG(valor));

/*3.15*/ DELETE FROM cajas WHERE valor<100;

/*3.16*/ DELETE FROM cajas WHERE almacen IN(
SELECT codigo FROM almacenes WHERE capacidad< (
SELECT COUNT(numreferencia) FROM cajas WHERE almacen=codigo));

show columns from cajas;
select * from almacenes;
select * from cajas;