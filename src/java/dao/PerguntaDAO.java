package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;;
import modelo.Pergunta;

/**
 *
 * @author Aluno
 */
public class PerguntaDAO {
    EntityManager em;
    
    public PerguntaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Pergunta obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            //em.close();
            
        }
        
    }

    public List<Pergunta> listar() throws Exception {
        return em.createNamedQuery("Pergunta.findAll").getResultList();
    }
    public List<Pergunta> listar(String enunciado) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Pergunta> query = 
                 em.createNamedQuery("Pergunta.findByEnunciado", Pergunta.class);
         
         //Seto o parâmetro
         query.setParameter("enunciado", '%' + enunciado + '%');
         //retorno minha lista
         return query.getResultList();
    }
    
    public void alterar(Pergunta obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            //em.close();
        }
    }
    
    public void excluir(Pergunta obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            //em.close();
        }
    }
public Pergunta buscarPorChavePrimaria(Integer chave)
    {
        return em.find(Pergunta.class, chave);
    }
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
