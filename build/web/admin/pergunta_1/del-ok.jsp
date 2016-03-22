<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%@include file="../cabecalho.jsp"%>
<%
    String msg = "";
    if(request.getParameter("id")==null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        
        Integer id = Integer.parseInt(request.getParameter("id")); // conversao
        
        PerguntaDAO dao = new PerguntaDAO();
        //buscar o registro pela chave primária
        Pergunta obj = dao.buscarPorChavePrimaria(id);
        // Excluir a pergunta buscada
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
String id = request.getParameter("txtId");
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Pergunta - Excluir</h4>
            <%=msg%>.<br />
            Id:<%=id%><br />
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

