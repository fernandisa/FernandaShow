<%@page import="dao.RankingDAO"%>
<%
    RankingDAO dao = new RankingDAO();


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <h1>ACABOU!!!!!</h1>
        <a href="jogo.jsp">Jogar novamente</a>
        <hr />
        <h4>TOP 10</h4>
        
        <ol>
            <li><%=dao.listarTop()%></li>
        </ol>
        
        
    </body>
</html>
