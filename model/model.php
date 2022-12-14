<?php

//Requête enregistrement
function req_register($log)
{
  $db = db_connect(); //Crud
  // Écriture de la requête

  $sqlQuery = 'INSERT INTO users (user_pseudo, user_mdp, user_nom, user_prenom, user_age, user_mail) VALUES(:pseudo, :mdp, :nom, :prenom, :age, :mail)';

  // Préparation

  $reqRegister = $db->prepare($sqlQuery);

  // Exécution ! L'utilisateur est maintenant en base de données
  $reqRegister->execute([
    'pseudo' => $log['pseudo'],
    'mdp' => $log['mdp'],
    'nom' => $log['nom'],
    'prenom' => $log['prenom'],
    'age' => $log['age'],
    'mail' => $log['mail'],
  ]);
}

function req_connect($log) //cRud
{
  $db = db_connect();

  $sqlQuery = 'SELECT * FROM users WHERE user_pseudo = :pseudo AND user_mdp = :mdp';
  $reqConnect = $db->prepare($sqlQuery);
  $reqConnect->execute($log);
  return $reqConnect->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_ASSOC ou PDO::FETCH_NUM ou PDO::_FETCH_OBJ
  // Array ( [0] => Array ( [user_id] => 4 [user_pseudo] => dev [user_prenom] => Ludo [user_nom] => Poupou [user_age] => 15 [user_mdp] => 123456 [user_mail] => ldc45@outlook.fr ) )
}

function req_update($log) //crUd
{
  $db = db_connect();

  $sqlQuery = 'UPDATE users SET user_pseudo= :pseudo, user_mdp= :mdp, user_nom= :nom, user_prenom= :prenom, user_age= :age, user_mail= :mail WHERE user_pseudo = :pseudo';
  $reqUpdate = $db->prepare($sqlQuery);
  $reqUpdate->execute([
    'pseudo' => $log['pseudo'],
    'mdp' => $log['mdp'],
    'nom' => $log['nom'],
    'prenom' => $log['prenom'],
    'age' => $log['age'],
    'mail' => $log['mail'],
  ]);
}


function req_delete($pseudo) //cruD
{
  $db = db_connect();

  $sqlQuery = 'DELETE FROM users WHERE user_pseudo = :pseudo';
  $reqDelete = $db->prepare($sqlQuery);
  $reqDelete->execute([
    'pseudo' => $pseudo
  ]);
}

function req_search($keywords)
{
  $db = db_connect();

  $sqlQuery = "SELECT * FROM villes WHERE ville_nom LIKE '%$keywords%'";
  $reqRegister = $db->prepare($sqlQuery);
  $reqRegister->execute();
  return $reqRegister->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_ASSOC ou PDO::FETCH_NUM ou PDO::_FETCH_OBJ
}


//db connect

function db_connect()
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=onygo;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $db;
  } catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
  }
}
