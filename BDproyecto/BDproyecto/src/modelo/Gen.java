package modelo;

public class Gen {
	private String idGen;
	private String tipo;
	
	public Gen(String idGen, String tipo){
		this.idGen=idGen;
		this.tipo=tipo;
	}

	public String getIdGen() {
		return idGen;
	}

	public void setIdGen(String idGen) {
		this.idGen = idGen;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	

}
