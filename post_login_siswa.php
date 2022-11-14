<?php
 include "conec.php";
 session_start();
 if (isset($_POST['submit'])) {
   $nisn = $_POST['nisn'];
   $password = sha1($_POST['password']);

 
    $sql = "SELECT * FROM user WHERE nisn='$nisn' AND password='$password'";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['nisn'] = $row['nisn'];
        header("Location: about.php");
        echo "BERHASIL";
    } else {
        echo "<script>alert('nisn atau password Anda salah. Silahkan coba lagi!')</script>";
        echo "<meta http-equiv='refresh' content='0;url=login_siswa.php'>";
    }
}
else {
header("Location:https://wa.me/6289665764328/?text=Hai%20kak%20Artha,%0AAku%20lupa%20password%20aku%20kak,%20kakak%20bisa%20bantu%20login%20ga%20kak?");
 }
 ?>
