package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Ranking;

<<<<<<< HEAD
@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-03-21T16:25:54")
=======
@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-03-15T09:07:01")
>>>>>>> origin/master
@StaticMetamodel(Jogador.class)
public class Jogador_ { 

    public static volatile SingularAttribute<Jogador, String> senha;
    public static volatile SingularAttribute<Jogador, String> foto;
    public static volatile ListAttribute<Jogador, Ranking> rankingList;
    public static volatile SingularAttribute<Jogador, String> login;
    public static volatile SingularAttribute<Jogador, String> email;

}