package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Ranking;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-09T15:01:06")
@StaticMetamodel(Jogador.class)
public class Jogador_ { 

    public static volatile SingularAttribute<Jogador, String> senha;
    public static volatile SingularAttribute<Jogador, String> foto;
    public static volatile ListAttribute<Jogador, Ranking> rankingList;
    public static volatile SingularAttribute<Jogador, String> login;
    public static volatile SingularAttribute<Jogador, String> email;

}