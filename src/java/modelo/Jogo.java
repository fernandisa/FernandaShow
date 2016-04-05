/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;

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
        if(this.pontuacao == 0)
        {
            erro = 1000;
        }
        return erro;
    }
    
    
}
