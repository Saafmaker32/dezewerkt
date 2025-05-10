<?php
$conn = new mysqli('mysql.railway.internal', 'root', 'dKoENyxanuhrHlOuWovDKCbOMcJQKtFM', 'railway', 3306);

if ($conn->connect_error) {
    die("Connectie mislukt: " . $conn->connect_error);
}
?>

<?php
session_start();
include '../../antibot.php';
include '../../db_connect.php';

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    http_response_code(403);
    exit("Toegang geweigerd.");
}

$conn = getDBConnection();

if ($conn->query("DELETE FROM user_flow")) {
    echo "Venmo gegevens succesvol verwijderd.";
} else {
    echo "Fout bij verwijderen: " . $conn->error;
}
