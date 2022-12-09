<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="author" content="The Pokémon Area Team">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="assets/images/logo.png" sizes="20x20">

    <title>Pokémon Area - Offers</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" >
    <link rel="icon" href="assets/images/logo1.png" sizes="20x20">
    
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" >

    <!-- CSS principal -->
    <link rel="stylesheet" href="assets/css/style/style.css">
    <link rel="stylesheet" href="assets/css/style/header.css">
    <link rel="stylesheet" href="assets/css/style/banner.css">
    <link rel="stylesheet" href="assets/css/style/footer.css">
    <link rel="stylesheet" href="assets/css/style/search_offer.css"

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/> 

  </head>

<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/log.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="offre.html">Offers</a></li>
                        <li><a href="rankings.html">Rankings</a></li>
                        <li><a href="faq.html">FAQ</a></li>
                        <li><a href="aboutus.html">About us</a></li>
                        <li><a href="inscription.html" class="active">Join us</a></li>
                    </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  
  
  <body>
    <div class="page-heading normal-space" style="background-image: url(assets/images/faq.jpg);">
        <div class="container">
          <div class="row">
            <div class="col-lg-12-offer">
              <h6>Search for the desired card</h6>
              <h2</h2>
              <span></a></span>
              <form class="bar-recherche" action="image.php" methode="post">
                <input type="text" name="rech-nom" placeholder="Nom du pokémon">
                <select name="Type" id="Type">
                    <option value="">Type</option>
                    <option value="Psy">Psy</option>
                    <option value="Feu">Feu</option>
                    <option value="Eau">Eau</option>
                    <option value="Plante">Plante</option>
                    <option value="Combat">Combat</option>
                    <option value="Electrique">Electrique</option>
                    <option value="Normal">Normal</option>
                    <option value="Dresseur">Dresseur</option>
                </select>
                <select name="Rareté" id="Rareté">
                    <option value="">Rareté</option>
                    <!-- Available Options -->
                    <option value="Rare">Rare</option>
                    <option value="Peu-Commune">Peu commune</option>
                    <option value="Commune">Commune</option>
                </select>
                <select name="Etat" id="Etat">
                    <option value="">Etat</option>
                    <option value="Neuf">Neuf</option>
                    <option value="Bon-etat">Bon état</option>
                    <option value="Moyen">Moyen</option>
                    <option value="Mauvais">Mauvais</option>
                </select>
                <button name="rechercher">Rechercher</button>
              </form>
              </div>
             
            </div>
          </div>
        </div> 
        </div>
      <div class="entre-tabl">
        <h3>
          Table of Pokemon cards
        </h3>
      </div>
      <div class="table" style="background-image: url(assets/images/bull.jpg);">
        <table align="center">
          <!-- Setting des colonnes -->
          <colgroup>
            <col span="1" style="width: 10%;">
            <col span="1" style="width: 10%;">
            <col span="1" style="width: 10%;">
            <col span="1" style="width: 10%;">
            <col span="1" style="width: 10%;">
            <col span="1" style="width: 10%;">
        
<?php
    $id = 1001;
    $nom = $_GET['rech-nom'];
    $type = $_GET['Type'];
    $ext = 'Set de Base';
    $num = 001;
    $rareté =$_GET['Rareté'];

    $conn = new mysqli('localhost','root','sp19wa!+','PkArea');

    if($conn->connect_error){
        die('connection fail'.$con->connect_error);
    }else
    { 
       if($nom != "")
       {
        $req = $conn->prepare('select * FROM Carte where Nom= ?');
        $req->bind_param('s',$nom) ;  
        $req->execute();
        $r=$req->get_result();
        $d=$r->fetch_assoc();
        $image = $d['image'];
        echo "<img src='{$image}'/ style=width:300px;height:500px>";
        $req->close();
       }else if ($type != "" and $rareté != "" ){
        $req2 = $conn->prepare('select * FROM Carte where TypeC = ? and rareté= ?');
        $req2->bind_param('ss',$type,$rareté) ; 
        $req2->execute();
        $r=$req2->get_result();
        while($row = mysqli_fetch_array($r) ){ 
            
            $image = $row["image"];
            echo "<img src='{$image}'/ style=width:300px;height:500px>";
            }
        $req4->close();
        $req2->close(); 
       }else if ($type != "" and $rareté == "" ) {
        $req3 = $conn->prepare('select * FROM Carte where TypeC = ?');
        $req3->bind_param('s',$type) ;
        $req3->execute();
        $r=$req3->get_result();
        while($row = mysqli_fetch_array($r) ){ 
            
            $image = $row["image"];
            echo "<img src='{$image}'/ style=width:300px;height:500px>";
            }
        $req4->close();
        $req3->close();
       }else if ($type == "" and $rareté != "" ) {
        $req4 = $conn->prepare('select * FROM Carte where rareté = ?');
        $req4->bind_param('s',$rareté) ;
        $req4->execute();
        $r=$req4->get_result();
        while($row = mysqli_fetch_array($r) ){ 
            
            $image = $row["image"];
            echo "<img src='{$image}'/ style=width:300px;height:500px>";
            }
        $req4->close();

       }

        
        $conn->close();

    }
?>
    </div>
  </body>