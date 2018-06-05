package si.feri.eko.baza;

public class Komentar{
	
	private int id;
	
	private String vsebina;
	
	public Komentar(String vsebina)
	{
		this.vsebina = vsebina;
	}
	
	public String getVsebina(){
		return vsebina;
	}
	
	public void setVsebina(String vsebina){
		this.vsebina = vsebina;
	}
	
	@Override
    public String toString() {
        return "Komentar{" +
                "id=" + id +
                ", vsebina='" + vsebina + '\'' +
                '}';
    }
}
