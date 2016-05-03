package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Jogador;

/**
 *
 * @author Aluno
 */
public class JogadorDAO {
    EntityManager em;
    
    public JogadorDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Jogador obj) throws Exception {
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
     //O MÉTODO REALIZAR LOGIN RECEBE COMO PARAMETRO
    //O LOGIN E A SENHA RETORNANDO
    //O OBJETO DO JOGADOR LOGADO OU NULL (SE NAO ENCONTROU JOGADOR)
    public Jogador realizarLogin(String login, String senha){
        TypedQuery<Jogador> query = 
                em.createNamedQuery("Jogador.realizarLogin", Jogador.class);
        query.setParameter("login", login);
        query.setParameter("senha" ,senha);
        Jogador jogador;
        try {
            jogador = query.getSingleResult();
        }
        catch (Exception e) {
            jogador = null;
        }
            return jogador; // mudei de null pra jogador
    }
    
    public List<Jogador> listar() throws Exception {
        return em.createNamedQuery("Jogador.findAll").getResultList();
    }
    public List<Jogador> listar(String login) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Jogador> query = 
                 em.createNamedQuery("Jogador.findByLogin", Jogador.class);
         
         //Seto o parâmetro
         query.setParameter("login", '%' + login + '%');
         //retorno minha lista
         return query.getResultList();
    }
    public void alterar(Jogador obj) throws Exception {
        
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
    
    public void excluir(Jogador obj) throws Exception {
        
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
    public Jogador buscarPorChavePrimaria(String chave)
    {
        return em.find(Jogador.class, chave);
    }
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
