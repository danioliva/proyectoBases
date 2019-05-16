package modelo;

public class Proteina {
	private String entrada;
	private String nombre_entrada;
	private String nombre;
	private String gen_idGen;
	
	public Proteina(String entrada, String nombre_entrada, String nombre, String gen_idGen){
		this.entrada = entrada;
		this.nombre_entrada = nombre_entrada;
		this.nombre = nombre;
		this.gen_idGen = gen_idGen;
	}

	public String getEntrada() {
		return entrada;
	}

	public void setEntrada(String entrada) {
		this.entrada = entrada;
	}

	public String getNombre_entrada() {
		return nombre_entrada;
	}

	public void setNombre_entrada(String nombre_entrada) {
		this.nombre_entrada = nombre_entrada;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getGen_idGen() {
		return gen_idGen;
	}

	public void setGen_idGen(String gen_idGen) {
		this.gen_idGen = gen_idGen;
	}
}
