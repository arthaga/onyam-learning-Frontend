<?php
include "conec.php";
session_start();
if (!isset($_SESSION['nisn'])){
  header("Location: login_siswa.php");
}
?>