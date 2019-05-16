package principal;

import modelo.Organismo;

public class Main {

	public static void main(String[] args) {
		BD bd = new BD();
		long startTime = System.currentTimeMillis();
		Organismo o= bd.getNomCient("Eukaryota");
		long endTime = System.currentTimeMillis() - startTime;
		System.out.println(endTime);
		System.out.println("Nombre_cientifico='"+o.getNombre_cientifico()+"';");
		
	}

}
