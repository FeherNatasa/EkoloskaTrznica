package si.feri.eko.baza;

public class Ocena{
	
	private int id;
	
	private int kmetija_ocena;
	
	public Ocena(int kmetija_ocena)
	{
		this.kmetija_ocena = kmetija_ocena;
	}
	
	public String getKmetija_ocena(){
		return kmetija_ocena;
	}
	
	public void setKmetija_ocena(String kmetija_ocena){
		this.kmetija_ocena = kmetija_ocena;
	}
	
	@Override
    public String toString() {
        return "Id {" + id +
                ", ocena='" + kmetija_ocena + '\'' +
                '}';
    }
}
