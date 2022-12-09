<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="author" content="The Pokémon Area Team">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <link rel="stylesheet" href="style.css" />
        <!-- Font Awesome pour avoir les icônes -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"/>
        <link rel="icon" href="assets/images/logo.png" sizes="20x20">

        <title>Pokémon Area - Connexion</title>
      
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- CSS principal -->
        <link rel="stylesheet" href="assets/css/style/connexion.css">

        <link rel="stylesheet" href="assets/css/style/style.css">
        <link rel="stylesheet" href="assets/css/style/header.css">
        <link rel="stylesheet" href="assets/css/style/banner.css">
        <link rel="stylesheet" href="assets/css/style/footer.css">
        
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/> 
    </head>

    <body>
         <!-- ***** Header Area Start ***** -->
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
    <div class="page-heading normal-space" style="background-image: url(assets/images/pokedex.jpg);">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <h6>VOTRE COLLECTION</h6>
            </div>
          </div>
        </div> 

 
        <div>
            <table>
 
  <?php

            
    $mail = $_GET['mail'];
    $pwd = $_GET['pwd'];

    $note = 5;


    $conn = new mysqli('localhost','root','sp19wa!+','PkArea');

    if($conn->connect_error){
        die('connection fail'.$con->connect_error);
    }else
    { 
       
        
        
        $req = $conn->prepare('select * FROM Utilisateur where email= ?');
        $req->bind_param('s',$mail) ;   
        $req->execute();
        $r=$req->get_result();
        if ($r->num_rows > 0)
        {
          $d=$r->fetch_assoc();
          if ($d['Mdp']==$pwd)
          {    
            echo "                                        login successfuly";
            echo "                                        Bienvenue : ";
            echo $d['Pseudo'] ;           
            echo "Voici votre collection de carte :--------------------------------------------------------------------------
            ---------------------------------------------------------------------------------------------------------------------
            --------------------------------------------------------------------------------------------------------";
            $req2 = $conn->prepare('select * from Collection natural join Carte where Collection.Pseudo=?;');
            $req2->bind_param('s',$d['Pseudo']) ; 
            $req2->execute();
            $r=$req2->get_result();
            while($row = mysqli_fetch_array($r) ){ 
                
                $image = $row["image"];
                echo "<img src='{$image}'/ style=width:400px;height:600px>";
                }
            $req2->close(); 
          }
        }else {
          echo "    invalid pwd or email";
        }



        $req->close();
        $conn->close();

    }
?>

              </table>  
        </div>
    </div>
  </body>

             
