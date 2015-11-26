

package dao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Livro;
import modelo.Livro;
/**
 *
 * @author marcelosiedler
 */
public class LivroDAO {
    EntityManager em;
    
    public LivroDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Livro obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
            
        }
        
    }

    public List<Livro> listar() throws Exception {
        return em.createNamedQuery("Livro.findAll").getResultList();
    }
    
      public List<Livro> listar(String nome) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Livro> query = 
                 em.createNamedQuery("Livro.findByName", Livro.class);
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //retorno minha lista
         return query.getResultList();
    }
    
    public void alterar(Livro obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Livro obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public Livro buscarPorChavePrimaria (Long chave)
    {
        return em.find(Livro.class,chave);
    }
    
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    


}