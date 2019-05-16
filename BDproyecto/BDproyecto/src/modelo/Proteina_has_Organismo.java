package modelo;

public class Proteina_has_Organismo {
	private String proteina_entrada;
	private String proteina_Gen_idGen;
	private String organismo_nombre_cientifico;
	
	public Proteina_has_Organismo(String proteina_entrada, String proteina_Gen_idGen, String organismo_nombre_cientifico){
		this.proteina_entrada=proteina_entrada;
		this.proteina_Gen_idGen=proteina_Gen_idGen;
		this.organismo_nombre_cientifico=organismo_nombre_cientifico;
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

	public String getOrganismo_nombre_cientifico() {
		return organismo_nombre_cientifico;
	}

	public void setOrganismo_nombre_cientifico(String organismo_nombre_cientifico) {
		this.organismo_nombre_cientifico = organismo_nombre_cientifico;
	}
}
