package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Compra;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-11-25T20:27:01")
@StaticMetamodel(Cliente.class)
public class Cliente_ { 

    public static volatile SingularAttribute<Cliente, String> telefone;
    public static volatile SingularAttribute<Cliente, String> endereco;
    public static volatile SingularAttribute<Cliente, Long> cpf;
    public static volatile SingularAttribute<Cliente, String> nome;
    public static volatile ListAttribute<Cliente, Compra> compraList;

}