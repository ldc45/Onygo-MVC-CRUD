<?php session_start();
print_r($_SESSION['user_logged']) ?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Hello, world!</title>
</head>

<body>
  <h1 class="text-center">Votre tableau de bord :</h1>
  <?php if (isset($_SESSION['user_logged'])) : ?>
    <div class="containter text-center">
      <div class="alert alert-info container" role=" alert">
        <p> Connexion réussie !</p>
      </div>
      <p>Vous êtes connecté sous le pseudo <mark><?= $_SESSION['user_logged']['user_pseudo'] ?></mark> </p>
      <p>
        Vous vous appelez <mark><?= $_SESSION['user_logged']['user_prenom'] ?> <?= $_SESSION['user_logged']['user_nom'] ?></mark>
      </p>
      <p>
        Vous avez <mark><?= $_SESSION['user_logged']['user_age'] ?></mark> ans.
      </p>
      <p>
        <?php
        $maintenant = new DateTime();
        echo 'Cette page a été générée le ' . $maintenant->format('d/m/Y à H:i:s') . ' (heure locale)';
        ?>
      </p>
    <?php else : ?>
      <div class="alert alert-danger container mt-4" role="alert">
        <p> Vous êtes pas connecté</p>
      </div>
    <?php endif; ?>
    <div class="container mt-4">
      <div class="row">
        <div class="col">
          <a href="../controler/cont-disconnect.php"><button class="btn btn-info"> Se déconnecter</button></a>
        </div>
        <div class="col">
          <a href="delete.php"><button class="btn btn-danger"> Supprimer mon compte</button></a>
        </div>
        <div class="col">
          <a href="update.php"><button class="btn btn-success"> Modifier mon compte</button></a>
        </div>
        <div class="col">
          <a href="search.php"><button class="btn btn-warning">Rechercher une destination</button></a>
        </div>
      </div>
    </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>