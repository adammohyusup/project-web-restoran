<?php

$koneksi = mysqli_connect("localhost","root","menu");

// Check connection
if(mysqli_connect_error()){
    echo "Koneksi DataBase Gagal : ". mysqli_connect_error();
}

?>