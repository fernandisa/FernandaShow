<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    if(request.getParameter("id") == null )
    {
      response.sendRedirect("list.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(categoria) a partir da sua
        //chave primária, nesse caso o id
        Integer id = Integer.parseInt(request.getParameter("id")); // conversao
        CategoriaDAO dao = new CategoriaDAO();
        Categoria obj = dao.buscarPorChavePrimaria(id);
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("list.jsp");
            return;
            
        }
        


    

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
              <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                        <input class="mdl-textfield__input" type="text" name="txtId" value="<%=obj.getId()%>" readonly="readonly" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtId">Id</label>
                    </div>
              </div>
              <%-- o readonly n permite ao usuario tocar nesse campo --%>
              <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtName" value="<%=obj.getNome()%>"  required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtName">Nome</label>
                    </div>
              </div>
                  
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
                    
                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


