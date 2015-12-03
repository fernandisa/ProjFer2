/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Compra;


/**
 *
 * @author aluno
 */
public class CompraDAO {
    EntityManager em;
    
    public CompraDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Compra obj) throws Exception {
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

    public List<Compra> listar() throws Exception {
        return em.createNamedQuery("Compra.findAll").getResultList();
    }
    public List<Compra> listar(Long idcompra) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Compra> query = 
                 em.createNamedQuery("Compra.findByCod", Compra.class); // mudei para buscar pela chave primaria da tabela compra
         
         //Seto o parâmetro
         query.setParameter("idcompra", '%' + idcompra + '%');
         //retorno minha lista
         return query.getResultList();
    }
    
    public void alterar(Compra obj) throws Exception {
        
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
    
    public void excluir(Compra obj) throws Exception {
        
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
public Compra buscarPorChavePrimaria (Long chave)
    {
        return em.find(Compra.class,chave);
    }
    
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
