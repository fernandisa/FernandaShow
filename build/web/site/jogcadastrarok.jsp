<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
String msg = "";
    if (request.getParameter("txtCadastrarLogin")!=null &&
            request.getParameter("txtCadastrarSenha")!=null || request.getParameter("txtCadastrarEmail") !=null)
    {
        response.sendRedirect("index.jsp");
    }
    else{
        msg = "Tentou fazer o login";
        String login = request.getParameter("txtCadastrarLogin").toString();
        String senha = request.getParameter("txtCadastrarSenha").toString();
        String email = request.getParameter("txtCadastrarEmail").toString();
      //Chamar a inclusão da DAO
        JogadorDAO dao = new JogadorDAO();
        Jogador obj = new Jogador();
        
        obj.setLogin(login);
        obj.setEmail(email);
        obj.setSenha(senha);
        
        
        try
        {
            dao.incluir(obj);
            msg = "Registro cadastrado com sucesso";
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar registro";
        }
        
    }
    
    
    
    
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String login = request.getParameter("txtCadastrarLogin");
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

