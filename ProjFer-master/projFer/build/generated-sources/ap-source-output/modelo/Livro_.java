package modelo;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Compra;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-11-26T12:56:07")
@StaticMetamodel(Livro.class)
public class Livro_ { 

    public static volatile SingularAttribute<Livro, BigDecimal> preco;
    public static volatile SingularAttribute<Livro, Long> isbn;
    public static volatile SingularAttribute<Livro, String> nome;
    public static volatile SingularAttribute<Livro, Integer> numexemplares;
    public static volatile SingularAttribute<Livro, String> editora;
    public static volatile ListAttribute<Livro, Compra> compraList;
    public static volatile SingularAttribute<Livro, String> autor;

}