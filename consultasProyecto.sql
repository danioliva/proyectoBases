SELECT * FROM mydb.gen;

SELECT * FROM mydb.secuencia;

SELECT * FROM mydb.organismo;

SELECT * FROM mydb.proteina;

SELECT * FROM mydb.proteina_has_organismo;

SELECT count(idgen) FROM mydb.gen WHERE tipo="ndk";

SELECT avg(longitud) FROM mydb.secuencia;

SELECT nombre_cientifico FROM mydb.organismo WHERE tipo="Eukaryota";

SELECT sec, longitud FROM mydb.secuencia WHERE Proteina_Gen_idGen=(SELECT idGen FROM mydb.gen WHERE tipo="ndp");

SELECT s.Proteina_Gen_idGen, s.sec FROM mydb.gen e, mydb.secuencia s WHERE s.longitud="137" AND s.Proteina_Gen_idGen= e.idGen;

SELECT s.sec, s.Proteina_entrada FROM mydb.gen a NATURAL JOIN mydb.secuencia s WHERE a.tipo="ndp" AND s.Proteina_Gen_idGen= a.idGen;

SELECT longitud, Proteina_entrada FROM mydb.secuencia WHERE longitud=(SELECT min(longitud) FROM mydb.secuencia);

SELECT s.sec FROM mydb.secuencia s NATURAL JOIN mydb.proteina p WHERE s.proteina_entrada=p.entrada AND p.entrada=(
	SELECT po.Proteina_entrada FROM mydb.proteina_has_organismo po NATURAL JOIN mydb.proteina p WHERE po.Organismo_nombre_cientifico="Homo sapiens" AND po.proteina_entrada=p.entrada);