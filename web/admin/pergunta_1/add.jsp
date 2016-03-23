<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
//Listagem de cursos
    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
//listagem de professores
    
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Cadastrar</h4>
            
            <form action="add-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                
           <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtId" readonly="readonly" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtId">Id</label>
                    </div>
            </div>
                
           <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEnunciado" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>
                </div>
           <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtA" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtA">Resposta A</label>
                    </div>
                </div> 
                  <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtB" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtB">Resposta B </label>
                    </div>
                </div> 
                  <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtC" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtC">Resposta C</label>
                    </div>
                </div> 
                 <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtD" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtD">Resposta D</label>
                    </div>
                </div>       
                <!-- 
                    essa div será para o cadastro do NÍVEL da pergunta
                -->
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="professsion" name="txtCerta">
                            <option value="">Selecione a resposta</option>
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>
                        </select>
                        <label class="mdl-select__label" for="txtCerta">Resposta certa</label>
                    </div>
                </div>
                <!-- 
                    essa div será para o cadastro do ACERTO da pergunta
                -->
              
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNivel" required  id="txtNome" />
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
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="professsion" name="selCategoria"> <!-- sobre name -->
                            <option value="">Selecione a categoria</option>
                            <%                            //percorrer minha lista de cursos
                                for (Categoria c : cLista) {
                                    %>
                                    <option value="<%=c.getId()%>"><%=c%></option>
                                    <%
                                        }

                                    %>
                                    
                         </select> <br />
                        
                        <label class="mdl-select__label" for="selCategoria">Categoria selecionada</label>
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


