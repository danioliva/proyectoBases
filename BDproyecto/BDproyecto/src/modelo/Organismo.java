package modelo;

public class Organismo {
	private String nombre_cientifico;
	private String tipo;
	
	public Organismo(String nombre_cientifico, String tipo){
		this.nombre_cientifico=nombre_cientifico;
		this.tipo=tipo;
	}

	public String getNombre_cientifico() {
		return nombre_cientifico;
	}

	public void setNombre_cientifico(String nombre_cientifico) {
		this.nombre_cientifico = nombre_cientifico;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	

}
