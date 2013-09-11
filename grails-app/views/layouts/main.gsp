<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="../../assets/ico/favicon.png">

    <title><g:layoutTitle default="Log de Horas"/></title>

    <!--[if lt IE 9]>
      <script src="${resource(dir: 'js', file: 'html5shiv.js')}"></script>
      <script src="${resource(dir: 'js', file: 'respond.min.js')}"></script>
    <![endif]-->

    <r:require modules="application"/>
    <r:layoutResources />

    <g:layoutHead/>
  </head>

  <body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Log de Horas</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><g:link controller='projeto'>Projeto</g:link></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container">
      <g:layoutBody/>
    </div>

    <r:layoutResources />

  </body>
</html>
