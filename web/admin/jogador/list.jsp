<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
JogadorDAO dao = new JogadorDAO();
List<Jogador> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contrário eu trago todos os clientes
if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!= "")
{
    String txtFiltro = request.getParameter("txtFiltro");
     lista = dao.listar(txtFiltro);
  
}
else
{
    lista = dao.listar();
}
%>
<!-- gambiarra pra alinhar o botão a esquerda-->
<style>
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4 class="centro">Jogador</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                         <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>
            <form action="list.jsp" method="post"> 
                <input type="text" name="txtFiltro" />
                <input type="submit" value="Pesquisar"/><br />
             </form>
             <table class="mdl-data-table mdl-js-data-table">
                 <thead>
                     <tr>
                         <th>Login</th>
                         <th>Foto</th>
                         <th>Ações</th>
                     </tr>
                     <!-- MUDAR AQUIIII -->
                     <%
                            for(Jogador item:lista)
                            {
                    %>
                 </thead>
                <tbody>
                    <tr>
                        <td><%=item.getLogin()%></td>
                        <td><%=item.getFoto()%></td>
                        <td>
                            
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?login=<%=item.getLogin()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?login=<%=item.getLogin()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                
                    </tr>
                    <%
                        }
                    %>
                  
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

