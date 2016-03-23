<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
if(request.getParameter("txtEnunciado") == null ||request.getParameter("txtCerta") == null || request.getParameter("txtNivel") == null )
{
    response.sendRedirect("list.jsp");
    return;
}
        Integer id = Integer.parseInt(request.getParameter("txtId"));
        String a = request.getParameter("txtA");
        String b = request.getParameter("txtB");
        String c = request.getParameter("txtC");
        String d = request.getParameter("txtD");
        String enunciado = request.getParameter("txtEnunciado");
        String certa = request.getParameter("txtCerta");
        Integer nivel = Integer.parseInt(request.getParameter("txtNivel"));
        Integer idCategoria = Integer.parseInt(request.getParameter("selCategoria")); // conversao  chave estrangeira .. nome da categoria
        
        

        //Buscar o registro pela chave primária
        //Alterar os demais valores (nesse caso apenas Nome)
        //mandar alterar
 
        PerguntaDAO dao = new PerguntaDAO();

        //busquei o jogador pelo login (registro pela C.Primária)

        Pergunta obj = dao.buscarPorChavePrimaria(id);
     
        Categoria objCategoria = new Categoria ();
        objCategoria.setId(idCategoria);
        // chamo a atualizar

        //Se não encontrou o registro volta pra listar 
        if(obj == null)
        {
            response.sendRedirect("list.jsp");
            return;
        }


        //Atualizar as demais informações enviadas
        obj.setA(a);
        obj.setB(b);
        obj.setC(c);
        obj.setD(d);
        obj.setCerta(certa);
        obj.setEnunciado(enunciado);
        obj.setNivel(nivel);
        obj.setId(id);
        // chamo a atualizar



        dao.alterar(obj);


        //txtnome é o NAME que eu coloquei no input na tela 
        //anterior
        String enunciado1 = request.getParameter("txtEnunciado");
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            Enunciado:<%=enunciado1%><br />
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

