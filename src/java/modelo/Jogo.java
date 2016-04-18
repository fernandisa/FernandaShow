package modelo;

import com.sun.istack.internal.logging.Logger;
import dao.PerguntaDAO;
import java.util.List;
import java.util.logging.Level;

public class Jogo {
    private List<Pergunta> perguntaList;
    private Integer pontuacao;
    private Integer pulos;
    public Jogo ()
    {
        this.pontuacao = 10;
        this.pulos = 3;
    }

    public List<Pergunta> getPerguntaList() {
        return perguntaList;
    }

    public void setPerguntaList(List<Pergunta> perguntaList) {
        this.perguntaList = perguntaList;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }
    
    public Integer getAcerto()
    {
        Integer acerto = 0;
        if(this.pontuacao == 0)
        {
            acerto = 1000;
        }
        return acerto;
    }
    
    public Integer getErro()
    {
        Integer erro = 0;
        return erro;
    }
    public void iniciar() 
    {
        try {
            PerguntaDAO dao = new PerguntaDAO();
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(Jogo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean confirmar(String opcaomarcada)
    {
        // se ele acertar a pergunta...
        if(opcaomarcada.equals(this.getPerguntaList().get(0).getCerta()))
        {
            // excluo a pergunta atual
            this.getPerguntaList().remove(0);
            // aumento a pontuacao dele
            this.setPontuacao(this.getAcerto());
            return true;
        }
        else
        {
            return false;
        }
    }
    public boolean pular()
    {
        if(this.pulos > 0) // se a quantidade de pulos for maior que 0, ele poderá pular
        {
            this.pulos = this.pulos - 1; // ele pula, e diminui a sua quantia disponível de pulos
            return true;
        }
        else
        {
            return false;
        }
        
    }
    
    }