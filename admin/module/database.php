<?php
  // function execute_command($sql) {
  //   $server = 'localhost';
  //   $username = 'root';
  //   $password = '';
  //   $dbname = 'web_ban_hang';
  //   $conn = new mysqli($server, $username, $password, $dbname);
  //   $conn->query($sql);
  //   $conn->close(); 
  // }

  // function execute_query($sql){
  //   $server = 'localhost';
  //   $username = 'root';
  //   $password = '';
  //   $dbname = 'web_ban_hang';
  //   $conn = new mysqli($server, $username, $password, $dbname);
  //   $result = $conn->query($sql);
  //   $table = $result->fetch_all();
  //   $conn->close();
  //   return $table;
  // }
  function execute_command($sql,$params=NULL) {
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'web_ban_hang';
    $conn = new PDO("mysql:host={$server};dbname={$dbname}", $username, $password);
    $stmt = $conn->prepare($sql);
    if (isset($params))
      foreach ($params as $key => $value)
        $stmt->bindValue($key,$value,PDO::PARAM_STR);
    $stmt->execute();
}
  
function execute_query($sql,$params=NULL) {
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'web_ban_hang';
    $conn = new PDO("mysql:host={$server};dbname={$dbname}", $username, $password);
    $stmt = $conn->prepare($sql);
    if (isset($params))
      foreach ($params as $key => $value)
        $stmt->bindValue($key,$value,PDO::PARAM_STR);
    $stmt->execute();
    $table = $stmt->fetchAll();
    return $table;
}
?>
