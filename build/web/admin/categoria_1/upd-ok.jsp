<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
if(request.getParameter("txtName")==null)
{
    response.sendRedirect("list.jsp");
    return;
}
        Integer id = Integer.parseInt(request.getParameter("txtId")); // conversao
        String nome = request.getParameter("txtName");
        
        

//Buscar o registro pela chave primária
//Alterar os demais valores (nesse caso apenas Nome)
//mandar alterar
 
CategoriaDAO dao = new CategoriaDAO();

//busquei o jogador pelo login (registro pela C.Primária)

Categoria obj = dao.buscarPorChavePrimaria(id);

//Se não encontrou o registro volta pra listar 
if(obj == null)
{
    response.sendRedirect("list.jsp");
    return;
}
//Atualizar as demais informações enviadas
obj.setNome(nome);
// chamo a atualizar
dao.alterar(obj);


//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String nome1 = request.getParameter("txtName");
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            Login:<%=nome1%><br />
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

