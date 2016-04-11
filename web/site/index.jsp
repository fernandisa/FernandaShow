<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String msg = "";
    if (request.getParameter("txtEntrarLogin")!=null &&
            request.getParameter("txtEntrarSenha")!=null)
    {
        msg = "Tentou fazer o login";
        String login = request.getParameter("txtEntrarLogin").toString();
        String senha = request.getParameter("txtEntrarSenha").toString();
 
    }
    if(request.getParameter("sair") != null)
    {
        session.setAttribute("usuarioAdmin", null);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show do Milhão</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="centralizar">
            <img src="img/show.png" alt=""/>
        </div>
        <div class="inicialformulario">
            <h4>Entrar</h4>
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
            <h4>Cadastre-se</h4>
            
            <form action="jogcadastrarok.jsp" method="post">
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
            
            <a href="instrucoes/list.jsp" class="mdl-layout__tab">Instruções</a>
        </div>
    </body>
</html>
