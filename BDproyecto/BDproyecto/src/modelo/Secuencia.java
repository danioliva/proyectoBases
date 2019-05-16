package modelo;

public class Secuencia {
	private String sec;
	private int longitud;
	private String proteina_entrada;
	private String proteina_Gen_idGen;
	
	public Secuencia(String sec, int longitud, String proteina_entrada, String proteina_Gen_idGen){
		this.sec=sec;
		this.longitud=longitud;
		this.proteina_entrada=proteina_entrada;
		this.proteina_Gen_idGen=proteina_Gen_idGen;
	}

	public String getSec() {
		return sec;
	}

	public void setSec(String sec) {
		this.sec = sec;
	}

	public int getLongitud() {
		return longitud;
	}

	public void setLongitud(int longitud) {
		this.longitud = longitud;
	}

	public String getProteina_entrada() {
		return proteina_entrada;
	}

	public void setProteina_entrada(String proteina_entrada) {
		this.proteina_entrada = proteina_entrada;
	}

	public String getProteina_Gen_idGen() {
		return proteina_Gen_idGen;
	}

	public void setProteina_Gen_idGen(String proteina_Gen_idGen) {
		this.proteina_Gen_idGen = proteina_Gen_idGen;
	}

}
