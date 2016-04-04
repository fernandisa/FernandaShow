<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalho-index.jsp"%>
<%
    String mensagem = "";
        if(request.getParameter("txtEntrarLogin")!=null &&
                request.getParameter("txtEntrarSenha")!=null)
        {
            JogadorDAO dao = new JogadorDAO();
            Jogador jogador;
            String login = request.getParameter("txtEntrarLogin");
            String senha = request.getParameter("txtEntrarSenha");
            
            jogador = dao.realizarLogin(login, senha);
            if(jogador !=null)
            {
                mensagem = "Login OK";
            }
            else
            { 
                mensagem = "Login not OK";
            }
            out.print(mensagem);
        }
    %>
    
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Gerenciamento do Sistema</h4>
            A verdadeira arte de viajar...
A gente sempre deve sair à rua como quem foge de casa,
Como se estivessem abertos diante de nós todos os caminhos do mundo.
Não importa que os compromissos, as obrigações, estejam ali...
Chegamos de muito longe, de alma aberta e o coração cantando!
<br/>
Viajar: a melhor forma de se perder e de se encontrar ao mesmo tempo.
        </div>

    </div>

</section>


<%@include file="rodape-index.jsp"%>
