<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    //Tentativa de login
    String msg = "";
    if(request.getParameter("txtEntrarLogin")!=null &&
            request.getParameter("txtEntrarSenha")!=null)
    {
        JogadorDAO dao = new JogadorDAO();
        Jogador jogador; //variável com o usuário logado
        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");
        
        jogador = dao.realizarLogin(login, senha);
        dao.fechaEmf();
        
        if(jogador !=null)
        {
            //criar uma Sessão para o jogador
            //vou pra tela inicial do jogo
            session.setAttribute("jogador", jogador);
            //vou para tela de jogo
            response.sendRedirect("jogo.jsp");
        }
        else
        {
            msg = "Login errado";
        }
       
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show do Milhão</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="centralizar">
            <img src="img/show.gif" alt=""/>
        </div>
        <div class="inicialformulario">
            <h4 class ="index">Entrar</h4>
            <form action="index.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtEntrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtEntrarSenha"
                       /><br/>
                <input type="submit" value="Entrar" />
                <a href="jogo.jsp">Pular login</a>
            </form>
            <div class="centralizar">
                <hr/>
                ou
                <hr/>
            </div>
            <a href="cadastrar.jsp"><h4>Cadastre-se</h4></a>
           <h4>Cadastre-se</h4>
            <form action="index.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtCadastrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtCadastrarSenha"
                       /><br/>
                <label>Email</label>
                <input type="text" name="txtCadastrarEmail"
                       /><br/>
                <input type="submit" value="Cadastrar" />
                
            </form>
        </div>
    </body>
</html>