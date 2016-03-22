<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String msg = "";
    if(request.getParameter("login")==null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        
        String login = request.getParameter("login"); // conversao
        
        JogadorDAO dao = new JogadorDAO();
        //buscar o registro pela chave primária
        Jogador obj = dao.buscarPorChavePrimaria(login);
        // Excluir o jogador buscado
        if(obj!=null)
        {
            dao.excluir(obj);
            msg = "Registro excluído com sucesso";
        }
        else
        {
            msg = "Registro não encontrado. Verifique.";
        }
        
    }
String login = request.getParameter("txtLogin");
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Excluir</h4>
            <%=msg%>.<br />
            Login:<%=login%><br />
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>
