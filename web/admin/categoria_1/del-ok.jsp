<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String msg = "";
    if(request.getParameter("id")==null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        
        Long id = Long.parseLong(request.getParameter("id")); // conversao
        
        CategoriaDAO dao = new CategoriaDAO();
        //buscar o registro pela chave primária
        Categoria obj = dao.buscarPorChavePrimaria(id);
        // Excluir o livro buscado
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
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Excluir</h4>
            <p>Registro excluído com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

