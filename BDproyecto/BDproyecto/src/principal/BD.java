package principal;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import modelo.Organismo;
import modelo.Proteina;

// import com.sun.corba.se.spi.orbutil.fsm.State;


public class BD {

    private final String CONNECTION_URL = "jdbc:mysql://localhost:3306/mydb";
    private final String CONNECTION_Usuario = "root";
    private final String CONNECTION_PASSWD = "usuariopwd";
    private static Connection con;

    public BD() {
        try {
            con = DriverManager.getConnection(CONNECTION_URL, CONNECTION_Usuario, CONNECTION_PASSWD);
        } catch (SQLException e) {
            System.err.println("ERROR. Trying to create database connection" + e.getMessage());
        }
    }

public Proteina getProteina(String nombre) { //funciona
	try
	{
		Proteina p = null;
		Statement stmt = con.createStatement();
		ResultSet result = stmt.executeQuery("SELECT * FROM Proteina WHERE nombre='"+nombre+"';");
		if(result.next()) {
			p = new Proteina(

					result.getString("entrada"),
					result.getString("nombre_entrada"),
					result.getString("nombre"),
					result.getString("gen_idGen")

			);
		}
		result.close();
		stmt.close();
		return p;
	}
	catch (SQLException ex)
	{
		throw new Error("ERROR. Trying to getProteina -> " + ex.getMessage());
	}
}
public int getAvgLongitud(){ //NO SE COMO SE PONE
	try {
		Statement stmt = con.createStatement();
		ResultSet result = stmt.executeQuery("SELECT avg(longitud) FROM secuencia;");
		
		if(result.next()) {
		return result.getInt("longitud")+1;
		}
		stmt.close();
		result.close();
		}catch(SQLException ex) {
			throw new Error("ERROR. Trying to get max id from Ninos + -> Msg: "+ex);
		}
		return -1;
}
public Organismo getNomCient (String tipo){ //NO ME SALE
	try
	{
		Organismo o = null;
		Statement stmt = con.createStatement();
		ResultSet result = stmt.executeQuery("SELECT nombre_cientifico, tipo FROM mydb.organismo WHERE tipo='"+tipo+"';");
		if(result.next()) { 
			//o=result.getString("nombre_cientifico");
			o = new Organismo(result.getString("nombre_cientifico"),result.getString("tipo"));
		}
		result.close();
		stmt.close();
		return o;
	}
	catch (SQLException ex)
	{
		throw new Error("ERROR. Trying to getNombreCientifico -> " + ex.getMessage());
	}
}

public void modificarProteina(Proteina p) {
	try(Statement stmt = con.createStatement()) {



		stmt.execute("UPDATE Proteina SET nombre =" + p.getNombre() + " WHERE entrada=" + p.getEntrada());



	} catch (SQLException sqlEx) {
		throw new Error("ERROR. Trying to modify educacion -> " + sqlEx.getMessage());
	}
}
public void insertarGenBaseDeDatos( String idGen, String tipo) { 
	try {
		System.out.println(idGen);
		System.out.println(tipo);

		Statement stmt = con.createStatement();
			
		stmt.execute("INSERT INTO Gen(idGen, tipo) VALUES("+idGen+","+tipo+")");
		stmt.close();
	} catch (SQLException ex) {
		throw new Error("ERROR. Trying to insert Usuario into database -> " + ex.getMessage());
	}

}
public void eliminarGenBaseDeDatos(String idGen, String tipo) {
	try {
	Statement stmt = con.createStatement();
	stmt.execute("DELETE FROM Gen WHERE idNen="+idGen);
	
	stmt.close();

	}
	catch(SQLException ex) {
		throw new Error("ERROR. Trying to delete ninio from database -> " + ex.getMessage());
	}
}















}