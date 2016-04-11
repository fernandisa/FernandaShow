<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
String msg = "";
    if (request.getParameter("txtEntrarLogin")!=null &&
            request.getParameter("txtEntrarSenha")!=null)
    {
        response.sendRedirect("index.jsp");
    }
    else{
        msg = "Tentou fazer o login";
        String login = request.getParameter("txtCadastrarLogin").toString();
        String senha = request.getParameter("txtCadastrarSenha").toString();
        String email = request.getParameter("txtCadastrarEmail").toString();
      //Chamar a inclusão da DAO
        JogadorDAO dao = new JogadorDAO();
        Jogador obj = new Jogador();
        
        obj.setLogin(login);
        obj.setEmail(email);
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
String login = request.getParameter("txtCadastrarLogin");
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Cadastrar</h4>
            <%=msg%>.<br />
            Login:<%=login%><br />
            <a href="index.jsp"><i class="material-icons">Index</i></a>
            
        </div>

    </div>

</section>


