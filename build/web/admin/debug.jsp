<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
  Jogador jogador = new Jogador();
  jogador.setEmail("fernanda.@gmail.com");
  jogador.setFoto("fer.jpg");
  jogador.setLogin("1234");
  jogador.setSenha("1234");
  
JogadorDAO dao = new JogadorDAO();
dao.incluir(jogador);
String msg = "Tudo ok";
//F8 FICA SÓ NOS ARQUIVOS
//F7 ENTRA NOS MÉTODOS
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
