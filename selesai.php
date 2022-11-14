<?php
include_once('session_user.php');
$nisn = $_SESSION['nisn'];
?>
<style>
	a.link-disabled {
		background:#888;
	}
</style>
<!doctype html>
<html lang="en">
<style>
    body{
      background-image: url("asset/wwwq.jpg");
      background-repeat: no-repeat;
      background-size: cover;
    }
    </style>
  <script>
    function go() {
      alert("Hello World!");
    }
  </script>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <div class="container">
    <div class="row justify-content-center">
            <div class="col-8 col-md-auto col-xs-auto" style="background-color:#F5F5F5;margin-top:50px;min-height:70vh">
                <?php
                    $mapel = urldecode($_GET['mapel']);
                    $nisn = urldecode($_GET['nisn']);

                    $jawaban = "SELECT jawaban.*, soal.id_soal, soal.mapel FROM jawaban LEFT JOIN soal ON jawaban.id_soal=soal.id_soal WHERE soal.mapel= '$mapel' and jawaban.nisn='$nisn'";
                    $result = $conn->query($jawaban);
                    // print_r($result);
                    $totalskor="";
                    while ($jwb = mysqli_fetch_array($result)) { 
                        // echo "skor = ". $jwb['skor'];
                        // echo " -> id_soal = ". $jwb['id_soal'];
                        // echo " -> mapel = ". $jwb['mapel']."<br>";
                        $totalskor = (int)$totalskor+(int)$jwb['skor'] *4;
                        // $id_nilai = $jwb['id_nilai'];
                        // $kor = $jwb['skor'];
                    }
                    $insrtnli ="INSERT INTO `nilai`(`nisn`, `nilai`, `mapel`) VALUES ($nisn,$totalskor,'$mapel')";
                    $updtnli= "UPDATE `nilai` SET `nilai`=$totalskor WHERE nisn=$nisn and mapel='$mapel'";
                    $slctnli = "SELECT * FROM `nilai` WHERE nisn=$nisn AND mapel='$mapel'";
                    $hslceknilai = $conn->query($slctnli);
                    // print_r($hslceknilai);
                    if($hslceknilai->num_rows){
                      // sudah ada nilai
                      $conn->query($updtnli);
                    } else {
                      // nilai belom ada
                      $conn->query($insrtnli);
                    }
                ?>
                <!-- ?> -->
                <h3 align="center" style="margin-top:80px;">Total Nilai Kamu adalah <h3>
                  <h2 align="center" style="font-size:150px"><?php echo $totalskor;?></h2>
                  <div class="d-grid gap-2">
                  <a href="profile.php" class="btn btn-primary">selesai</a>
                  </div>  
                </div>
        </div>
    </div>
  
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