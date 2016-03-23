<%
    String msg="";
    if(request.getParameter("txtLogin") !=null && request.getParameter("txtSenha") !=null)
    {
      msg = "Tentou fazer o login";
      String login = request.getParameter("txtLogin").toString();
      String senha = request.getParameter("txtSenha").toString();
      
      if(login.equals("Admin")&& senha.equals("Admin"))
      {
          
          session.setAttribute("usuarioAdmin", login);
          
          response.sendRedirect("index.jsp");
      }
      else
      {
          msg="Errou";
      }
    }
    %>
<html lang="pt-br">
   <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gerenciamento de Sistemas</title>

        <!-- Add to homescreen for Chrome on Android -->
        <meta name="mobile-web-app-capable" content="yes">
        <link rel="icon" sizes="192x192" href="images/touch/chrome-touch-icon-192x192.png">

        <!-- Add to homescreen for Safari on iOS -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-title" content="Material Design Lite">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">

        <!-- Tile icon for Win8 (144x144 + tile color) -->
        <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
        <meta name="msapplication-TileColor" content="#3372DF">

        <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
        <!--
        <link rel="canonical" href="http://www.example.com/">
        -->

        <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <link rel="stylesheet" href="mdl/material.min.css">
        <link rel="stylesheet" href="mdl/styles.css">
       
    </head>
    
<body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
        <div class="mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
          <h3>Área Administrativa</h3>
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        </header>

        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
          <form action="login.jsp" method="post">
              <div>
                  <%=msg%>
              </div>
              <div class="divformulario">
                  <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtLogin" name="txtLogin" />
                        <label class="mdl-textfield__label" for="txtLogin">Login</label>
                    </div>
                </div>
              <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="password" required  id="txtSenha" name="txtSenha" />
                        <label class="mdl-textfield__label" for="txtSenha">Senha</label>
                    </div>
                </div>
             
           <!-- Accent-colored raised button with ripple -->
            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
                    Ok
                </button>   
      </div>
              </form>
    </body>
</html>