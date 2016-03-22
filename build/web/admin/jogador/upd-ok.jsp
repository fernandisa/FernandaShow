<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
if(request.getParameter("txtLogin")==null)
{
    response.sendRedirect("list.jsp");
    return;
}

        String login = request.getParameter("txtLogin");
        String senha = request.getParameter("txtSenha");
        String email = request.getParameter("txtEmail");
        String foto = request.getParameter("txtFoto");
        
        
        

//Buscar o registro pela chave primária
//Alterar os demais valores (nesse caso apenas Nome)
//mandar alterar
 
JogadorDAO dao = new JogadorDAO();

//busquei o jogador pelo login (registro pela C.Primária)

Jogador obj = dao.buscarPorChavePrimaria(login);

//Se não encontrou o registro volta pra listar 
if(obj == null)
{
    response.sendRedirect("list.jsp");
    return;
}


//Atualizar as demais informações enviadas
obj.setLogin(login);
obj.setEmail(email);
obj.setFoto(foto);
obj.setSenha(senha);

// chamo a atualizar



dao.alterar(obj);


//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String login1 = request.getParameter("txtLogin");
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            Login:<%=login1%><br />
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

