<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    if(request.getParameter("id") == null)
    {
        response.sendRedirect("list.jsp");
        return;
    }
  
    Integer id = Integer.parseInt(request.getParameter("id"));

    PerguntaDAO dao = new PerguntaDAO();
    Pergunta obj = dao.buscarPorChavePrimaria(id);
    //Achou a pergunta se não achou volta pra lista
    if(obj==null)
    {
        response.sendRedirect("list.jsp");
        return;
    }
    
//Listagem de categorias
    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <%-- o readonly n permite ao usuario tocar nesse campo --%>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtId" value="<%=obj.getId()%>" readonly="readonly" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtId">Id</label>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEnunciado" value="<%=obj.getEnunciado()%>" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtA" value="<%=obj.getA()%>"  required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtA">Resposta A</label>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtB" value="<%=obj.getB()%>" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtB">Resposta B</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtC" value="<%=obj.getC()%>" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtC">Resposta B</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtD" value="<%=obj.getD()%>" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtD">Resposta D</label>
                    </div>
                </div>
                
                <!-- 
                    essa div será para o cadastro do NÍVEL da pergunta
                -->
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selCategoria" name="selCategoria" >
                            <option value="">Selecione a resposta</option>
                            <%
                                //percorrer minha lista de cursos
                                String selected = "";    
                                for (Categoria c : cLista) 
                                {
                                    if(c.getId() == obj.getCategoria().getId())
                                    {
                                        selected = "selected";
                                    }
                            %>            
                <option value="<%=c.getId()%>" <%=selected%>><%=c%></option>
                            <%
                                selected = "";
                            }
                            %>
                            
                        </select>
                       <label class="mdl-select__label" for="selCategoria">Exemplo Select</label>
                    </div>
                </div>
                <!-- 
                    essa div será para o cadastro do ACERTO da pergunta
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtCerta" value="<%=obj.getCerta()%>" required  />
                        <label class="mdl-textfield__label" for="txtCerta">Certa</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNivel" value="<%=obj.getNivel()%>" required  />
                        <label class="mdl-textfield__label" for="txtNivel">Nível</label>
                    </div>
                </div>
                <!-- 
                    essa div será para o cadastro do ENUNCIADO da pergunta
                -->
                
                <!-- 
                    essa div será para o cadastro da CATEGORIA da pergunta
                -->
               
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


