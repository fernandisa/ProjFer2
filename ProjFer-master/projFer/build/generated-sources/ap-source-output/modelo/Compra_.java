package modelo;

import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Cliente;
import modelo.Livro;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-11-25T20:27:01")
@StaticMetamodel(Compra.class)
public class Compra_ { 

    public static volatile SingularAttribute<Compra, Long> idcompra;
    public static volatile SingularAttribute<Compra, Livro> isbn;
    public static volatile SingularAttribute<Compra, Integer> qntd;
    public static volatile SingularAttribute<Compra, Cliente> cpf;
    public static volatile SingularAttribute<Compra, Date> datahora;
    public static volatile SingularAttribute<Compra, BigDecimal> precovenda;

}