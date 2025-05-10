<?php
$conn = new mysqli('mysql.railway.internal', 'root', 'dKoENyxanuhrHlOuWovDKCbOMcJQKtFM', 'railway', 3306);

if ($conn->connect_error) {
    die("Connectie mislukt: " . $conn->connect_error);
}
?>

