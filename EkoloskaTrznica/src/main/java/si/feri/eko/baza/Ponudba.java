package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ponudba {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
}
