<?php
	require_once('../databaseco.php');
	require_once('User.php');
?>

<?php
	class Auth{
		/*
		*
		*Recupere les info de la session et consulte la base a la recherche de l'utilisateur
		*
		*/
		static function islog(){
			global $cnx;
			if(isset($_SESSION['Auth'])){
				$q=array(':pseudo'=>$_SESSION['Auth']->getPseudo(),':password'=>$_SESSION['Auth']->getMdp(),':groupe'=>$_SESSION['Auth']->getGroupe());
				$sql='SELECT pseudo,password from users WHERE pseudo=:pseudo and password=:password and groupe=:groupe';
				$req=$cnx->prepare($sql);
				$req->execute($q);
				$count=count($req);
				if($count==1){
					return true;					
				}
				else{
					return false;
				}
			}
			else{
				return false;
			}

		}
		/*
		*
		*Recupere les info de la session et regarde si le groupe de l'utilisateur est admin
		*
		*/
		static function isAdmin(){
			global $cnx;
			if(isset($_SESSION['Auth'])){
				$q=array(':groupe'=>$_SESSION['Auth']->getGroupe());
				$sql='SELECT nomGroupes from groupes WHERE idGroupes=:groupe';
				$req=$cnx->prepare($sql);
				$req->execute($q);
				$res=$req->fetchAll();
				if($res[0]['nomGroupes'] == "admin"){
					return true;
				}
				else return false;
			}
		}
		/*
		*
		*Recupere les info de la session et regarde si le groupe de l'utilisateur est prof
		*
		*/
		static function isProf(){
			global $cnx;
			if(isset($_SESSION['Auth'])){
				$q=array(':groupe'=>$_SESSION['Auth']->getGroupe());
				$sql='SELECT nomGroupes from groupes WHERE idGroupes=:groupe';
				$req=$cnx->prepare($sql);
				$req->execute($q);
				$res=$req->fetchAll();
				if($res[0]['nomGroupes'] == "prof"){
					return true;
				}
				else return false;
			}

		}


	}


?>