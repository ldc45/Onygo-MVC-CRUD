<?php
session_start();
print_r($_SESSION["searchResult"]);
?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>search</title>
</head>

<body>

  <h1 class="text-center">Rechercher vos Capitales préférées ici !</h1>

  <form action="../controler/cont-search.php" method="GET">
    <div class=" container">
      <div class="row d-flex">
        <div class="col"><input type="text" name="keywords" class="form-control" value="" placeholder="Mots-clés"></div>
        <div class="col">
          <button type="submit" name="valider" class="btn btn-warning">Rechercher</button>
        </div>
      </div>
    </div>
  </form>

  <?php if (isset($_SESSION["searchResult"])) { ?>
    <div id="resultats" class="container mt-4">
      <h2 id="nb"><?= count($_SESSION["searchResult"]) ?> résultats trouvés</h2>


      <h3><?= $_SESSION["searchResult"]["ville_nom"] ?></h3>
      <div>
        <div>
          <img class="w-25" src="<?= $_SESSION["searchResult"]["drapeau"] ?>" alt="">
        </div>
        <h4>Langue : <?= $_SESSION["searchResult"]["ville_langue"] ?></h4>
        <h4>Population : <?= number_format($_SESSION["searchResult"]["ville_population"]) ?> d'habitants</h3>
          </p>
          <h4>Continent : <?= $_SESSION["searchResult"]["region"] ?></h4>
          <h4>Monnaie : <?= $_SESSION["searchResult"]["currencies_name"] ?></h4>
      </div>
    </div>
  <?php } ?>



  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>