<?php
	include_once('class/Auth.php');
	session_start();


?>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <title>Projet tuteuré</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="ico/favicon.png">
  </head>

  <body>
  	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Accueil</a>
          <div class="nav-collapse collapse">
           <?php
           if(Auth::islog()){ 
				echo '<ul class="nav pull-right">';
               	echo ' <li class="dropdown">';
                echo '	<a class="dropdown-toggle" data-toggle="dropdown" href="#">'.$_SESSION['Auth']->getPseudo().'<b class="caret"></b></a>';
                echo '	<ul class="dropdown-menu">';
                echo ' 		<li><a href="editionprofils.php">Profil</a></li>';
            	echo ' 		<li><a href="deconnexoin.php">Déconnexion</a></li>';
            	if(Auth::isAdmin()){
				
                	echo '  	<li class="divider"></li>';
                	echo '  	<li><a href="Admin/index.php">Administration</a></li>';
           		}
                echo ' 	</ul>';
              	echo ' </li>';
            	echo '</ul>';
             	echo '<p class="navbar-text pull-right">Connecté en tant que</p>';
            
			}
		
		else{
			echo '  <form class="navbar-form pull-right" role="form" method="post" action="connexion.php">
              <input type="text" placeholder="pseudo" class="form-control" name="pseudo">       
              <input type="password" placeholder="Password" class="form-control" name="password">
            <button type="submit" class="btn btn-success" name="submit">Connexion</button>
         
          </form>';
		}
?>
       <?php      
        if(Auth::islog()){ 
            echo '<ul class="nav">
                          <li class="active"><a href="index.php">Accueil</a></li>
                          <li><a href="apercureseau.php">Aperçu du réseau</a></li>
                          <li><a href="script.php">Lancer un script réseau</a></li>
                          <li><a href="contact.php">Contact administrateur</a></li>
                        </ul>';
        }
        else{
        	echo ' <ul class="nav">
              <li class="active"><a href="index.php">Accueil</a></li>
              <li><a href="quefaire.php">Que faire</a></li>
              <li><a href="inscription.php">Inscription</a></li>
              <li><a href="#">Contacter un administrateur</a></li>
            </ul>';
        }
        ?>
          </div><!--/.nav-collapse -->
        </div>

      </div>
    </div>

<div class="container-fluid">
      <div class="row-fluid">    
        <div class="span12">
          <div class="hero-unit">
            <?php
            if(isset($_GET['message'])&& !empty($_GET['message'])){
              echo htmlentities($_GET['message']);
            }
            else{

           echo "<h1>Bonjour ";
          if(Auth::islog()) echo $_SESSION['Auth']->getPseudo(); 
           echo " et bienvenue sur le réseau </h1>
            <p>Cliquez sur le lien ci dessous pour acceder à la documentation du site</p>
            <p><a href=\"documentation.php\" class=\"btn btn-primary btn-large\">Documentation</a></p>";
          }
          ?>
          </div>

        </div><!--/span-->
      </div><!--/row-->

      <hr>
      <footer>
        <p>&copy; IUT Orléans 2014</p>
      </footer>

    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>

  </body>
</html>