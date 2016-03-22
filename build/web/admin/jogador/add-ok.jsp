<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    
    //
 //   Date da = new Date();
    
    
    String msg="";
    
    if(request.getParameter("txtLogin") == null )
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
    
        String login = request.getParameter("txtLogin");
        String senha = request.getParameter("txtSenha");
        String email = request.getParameter("txtEmail");
        String foto = request.getParameter("txtFoto");
        
        //Chamar a inclusão da DAO
        JogadorDAO dao = new JogadorDAO();
        Jogador obj = new Jogador();
        
        obj.setLogin(login);
        obj.setEmail(email);
        obj.setFoto(foto);
        obj.setSenha(senha);
        
        
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
String login = request.getParameter("txtLogin");
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Cadastrar</h4>
            <%=msg%>.<br />
            Login:<%=login%><br />
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

