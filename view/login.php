<?php session_start(); ?>


<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Connexion</title>
</head>

<body>


  <section class="text-center">
    <h1 class="mt-4">Vous connectez :</h1>
    <form action="../controler/cont-connect.php" method="POST">
      <div class="container">
        <div class="row">
          <div class=" col-6">
            <label for="pseudo" class="form-label">Pseudo :</label>
            <input type="text" name="pseudo" class="form-control" id="pseudo">
          </div>
          <div class="col-6">
            <label for="mdp" class="form-label">Mot de passe :</label>
            <input type="password" name="mdp" class="form-control" id="mdp">
          </div>
        </div>
      </div>
      <div class="d-flex justify-content-center mt-4">
        <button type="submit" class="btn btn-primary">Envoyer</button>
      </div>

      <?php if (isset($_GET['erreur'])) : ?>
        <div class="alert alert-danger container mt-4" role="alert">
          <p> Votre pseudo/mot de passe incorrect.</p>
        </div>
      <?php endif; ?>

    </form>

  
  </section>
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