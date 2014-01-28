<?php

	require_once('databaseco.php');
	
?>
<?php
	class User {
		//stockage des données de la base
		private $id; 
		private $nom;
		private $prenom;
		private $mdp;
		private $pseudo;
		private $email;
		private $groupe;
			/*
			*
			*constructeur d'un utilisateur
			*avec comme paramètre l'id de l'utilisateur
			*On consulte la base a la recherche des informations neccessaires
			*
			*/
		public function __construct($id){

			global $cnx;
			$a=array(':id'=>$id);
			$sql='SELECT * from utilisateurs where idUtilisateurs=:id';
			$req=$cnx->prepare($sql);
			$req->execute($a);
			$res=$req->fetchAll();
			$count=count($req);
			if($count==1){	
				$this->id=$id;
				$this->pseudo=$res[0]['pseudoUtilisateurs'];
				$this->nom=$res[0]['nomUtilisateurs'];
				$this->prenom=$res[0]['prenomUtilisateurs'];
				$this->email=$res[0]['emailUtilisateurs'];
				$this->groupe=$res[0]['idGroupes'];
				$this->mdp=$res[0]['mdpUtilisateurs'];
			}
		}

		/*
		*
		*Consulte la base a la recherche du pseudo
		*return true si le pseudo existe
		*return false sinon
		*
		*/
		static function existPUser($pseudo){
			global $cnx;
			$a=array(':pseudo'=>$pseudo);
			$sql='SELECT * from utilisateurs where pseudoUtilisateurs=:pseudo';
			$req=$cnx->prepare($sql);
			$req->execute($a);
			$count=count($req);
			if($count==1){	
	    		return true;
	    	}
	    	else{
	    		return false;
	    	}
		}

		/*
		*
		*Consulte la base a la recherche du couple (nom prenom)
		*return true si le couple existe
		*return false sinon
		*
		*/
	    static function existNPUser($nom,$prenom){
	    	global $cnx;
	    	$a=array(':nom'=>$nom,':prenom'=>$prenom);
			$sql='SELECT * from utilisateurs where nomUtilisateurs=:nom and prenomUtilisateurs=:prenom';
			$req=$cnx->prepare($sql);
			$req->execute($a);
			$count=count($req);
			if($count==1){	
	    		return true;
	    	}
	    	else{
	    		return false;
	    	}
	    }
	
		/*
		*
		*Consulte la base a la recherche de l'email
		*return true si l'email existe
		*return false sinon
		*
		*/
	    static function existEUser($email){
	    	global $cnx;
	    	$a=array(':email' => $email);
			$sql='SELECT * from utilisateurs where emailUtilisateurs=:email';
			$req=$cnx->prepare($sql);
			$req->execute($a);
			$count=count($req);
			if($count==1){	
	    		return true;
	    	}
	    	else{
	    		return false;
	    	}
	    }
	 	
	 	/*
	 	*
	 	*recupere le pseudo de l'utilisateur instancier
	 	*
	 	*/
	    public function getPseudo(){
	    	return $this->pseudo;
	    }

	 	/*
	 	*
	 	*recupere le nom de l'utilisateur instancier
	 	*
	 	*/
	 	 public function getNom(){
	    	return $this->nom;
	    }

	 	/*
	 	*
	 	*recupere le prenom de l'utilisateur instancier
	 	*
	 	*/
		public function getPrenom(){
	    	return $this->prenom;
	    }
		/*
	 	*
	 	*recupere le mdp de l'utilisateur instancier
	 	*
	 	*/
	    public function getMdp(){
	    	return $this->mdp;
	    }

	    /*
	 	*
	 	*recupere le Groupe de l'utilisateur instancier
	 	*
	 	*/
	    public function getGroupe(){
	    	return $this->groupe;
	    }







	}




?>