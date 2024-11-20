<?php
$servername = "localhost"; // sesuaikan dengan nama server database Anda
$username = "root"; // sesuaikan dengan username database Anda
$password = "YES"; // sesuaikan dengan password database Anda
$dbname = "menu"; // sesuaikan dengan nama database Anda

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
$sql = "SELECT * FROM makanan";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Field1: " . $row["field1"]. " - Field2: " . $row["field2"]. "<br>";
    }
} else {
    echo "Tidak ada data.";
}
$conn->close();
?>
<?php
// ... (koneksi dan query sebelumnya)

// Menampilkan data dalam HTML
echo "<ul>";
while($row = $result->fetch_assoc()) {
    echo "<li>" . $row["field1"]. " - " . $row["field2"]. "</li>";
}
echo "</ul>";

$conn->close();
?>
