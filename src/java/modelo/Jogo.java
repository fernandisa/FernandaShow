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
}
