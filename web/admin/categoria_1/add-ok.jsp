<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    
    //
 //   Date da = new Date();
    
    
    String msg="";
    
    if(request.getParameter("txtNome") == null )
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
    
        String nome = request.getParameter("txtNome");
     
        
        
        //Chamar a inclusão da DAO
        CategoriaDAO dao = new CategoriaDAO();
        Categoria obj = new Categoria();
        
        obj.setNome(nome);
        
        
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
String nome = request.getParameter("txtNome");
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Cadastrar</h4>
             <%=msg%>.<br />
             Nome:<%=nome%><br />
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

