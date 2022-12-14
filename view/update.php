<?php
session_start();
$getData = $_SESSION;
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Inscription</title>
</head>

<body>
  <section id="contact" class="py-5 ">
    <div class="container">
      <h2 class="fw-bold">Modifier votre compte </h2>

      <?php echo ($getData['user_logged']['user_mail']); ?>
      <!--Début row-->
      <div class="row mt-4">
        <div class="col-md-4 text-center">
          <img src="../logo.png" alt="Onygo" width="100%">
        </div>
        <div class="col-md-6 offset-md-1">
          <form action="../controler/cont-update.php" method="POST">
            <div class="row g-1 g-md-3">
              <div class=" col-md mb-3">
                <label for="prenom" class="form-label">Prénom</label>
                <input required type="text" name="prenom" class="form-control" id="prenom" value="<?php echo ($getData['user_logged']['user_prenom']); ?>">
              </div>

              <div class=" col-md mb-3">
                <label for="nom" class="form-label">Nom</label>
                <input required type="text" name="nom" class="form-control" id="nom" value="<?php echo ($getData['user_logged']['user_nom']); ?>">
              </div>

            </div>
            <div class=" row g-1 g-md-3">
              <div class=" col-md-10 mb-3">
                <label for="pseudo" class="form-label">Pseudo</label>
                <input required type="text" name="pseudo" class="form-control" id="pseudo" value="<?php echo ($getData['user_logged']['user_pseudo']); ?>">
              </div>

              <div class=" col-md mb-3">
                <label for="age" class="form-label">Age</label>
                <input required type="number" name="age" class="form-control" id="age" value="<?php echo ($getData['user_logged']['user_age']); ?>">
              </div>

            </div>
            <div class=" row">
              <div class="mb-3 col">
                <label for="mail" class="form-label">Email address</label>
                <input required type="email" name="mail" class="form-control" id="mail" value="<?php echo ($getData['user_logged']['user_mail']); ?>">
              </div>
              <div class=" col">
                <label for="mdp" class="form-label">Mot de passe</label>
                <input required type="password" name="mdp" class="form-control" id="mdp" value="<?php echo ($getData['user_logged']['user_mdp']); ?>">
              </div>
            </div>
            <div class=" row">
              <div class="col"> <button type="reset" class="btn btn-secondary w-100">Recommencer</button></div>
              <div class="col"> <button type="submit" class="btn btn-warning w-100">Modifier</button></div>
            </div>
          </form>
        </div>
      </div>
    </div>
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