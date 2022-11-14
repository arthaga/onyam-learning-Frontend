<?php
include "conec.php";
session_start();
if (!isset($_SESSION['nisn'])){
  header("Location: login.php");
}
$nisn = $_SESSION['nisn'];
$mapel = urldecode($_GET['mapel']);
$no = $_GET['no'];
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
    <?php 
    
    ?>
  <div class="container">
  <div class="row">
  <div class="col-xs-12 col-md-4" style="margin-top: 5%; margin-bottom: 5%">
  <div class="row">
  <div class="col-10 mx-auto " style="background-color:white;">
      <div class="row">
      <h5 style="margin-top:15px; text-align:center; ">NOMOR</h5>
      <hr style="border-top: 5px solid #bbb;">
      
      <?php
      //  echo '<div class="rounded-1 btn btn-outline-success" style="background-color:#C0C0F2;margin-bottom:3px;display:flex;justify-content:center;align-item:center">'.$no.'</div>';
      $query_nomor = "SELECT * FROM soal WHERE mapel='$mapel'";
      $result_nomor = $conn->query($query_nomor);
      
      while ($rows_ = mysqli_fetch_array($result_nomor)) {
        if($no !== $rows_['no']) {
          echo '<div class="col-2"><a href="soal.php?no='.$rows_['no'].'&mapel='.$rows_['mapel'].'" class="rounded-1 btn btn-outline-success" style="background-color:#e6eeff;margin-bottom:3px;display:flex;justify-content:center;align-item:center">'.$rows_['no'].'</a></div>';
        }
        // if(){}
        // else(){}
        else {
          echo '<div class="col-2"><a href="soal.php?no='.$rows_['no'].'&mapel='.$rows_['mapel'].'" class="rounded-1 btn btn-outline-success" style="background-color:#99bbff;margin-bottom:3px;display:flex;justify-content:center;align-item:center">'.$rows_['no'].'</a></div>'; 
        }
      }
    ?>
      </div>
    </div>
  </div>
</div>
    <div class="col-xs-12 col-md-8 " style="background-color:#F5F5F5;margin-top:50px;min-height:70vh">
    <div class="row" style="min-heigh:150px">
    <div class="col-12">
      <?php
      $sql = "SELECT * FROM soal WHERE no='$no' AND mapel='$mapel'";
      $result_soal = $conn->query($sql);
    while ($rows = mysqli_fetch_array($result_soal)) {
        echo '<h5 style="margin-top:15px; text-align: center;">SOAL NOMOR : '.$rows['no'].' </h5>';
        echo '<hr style="border-top: 5px solid #bbb;">';
        echo '<p>'.$rows['soalnya'].'</p>';
?>
</div>
    </div>
    <div class="row" style="min-heigh:150px">
    <div class="col-12">
    <ul class="list-group">
<?php

        echo '<a href="soal.php?no='.$rows['no'].'&mapel='.$rows['mapel'].'&jawaban='.$rows['jawaban_a'].'" class="list-group-item mb-3 list-group-item-action" style="text-align: center;">'.$rows['jawaban_a'].'</a>';
        echo '<a href="soal.php?no='.$rows['no'].'&mapel='.$rows['mapel'].'&jawaban='.$rows['jawaban_b'].'" class="list-group-item mb-3 list-group-item-action" style="text-align: center;">'.$rows['jawaban_b'].'</a>';
        echo '<a href="soal.php?no='.$rows['no'].'&mapel='.$rows['mapel'].'&jawaban='.$rows['jawaban_c'].'" class="list-group-item mb-3 list-group-item-action" style="text-align: center;">'.$rows['jawaban_c'].'</a>';
        echo '<a href="soal.php?no='.$rows['no'].'&mapel='.$rows['mapel'].'&jawaban='.$rows['jawaban_d'].'" class="list-group-item mb-3 list-group-item-action" style="text-align: center;">'.$rows['jawaban_d'].'</a>';
		$id_soal = $rows['id_soal'];
      	$jawaban_benar = $rows['jawaban_benar'];
        // $mapel = $rows['mapel'];
        //   if($liatbiartau) {
          //     while($bor = $liatbiartau) {   
            //     }
            // }
          }
          $biartau="SELECT `id_jawaban` FROM `jawaban` WHERE nisn=$nisn AND id_soal=$id_soal";
          $liatbiartau=$conn->query($biartau);
                  // print_r($bor);
		

	function post_jawaban($skor_input, $id_soal, $conn,$nisn) {
    $mapel = urldecode($_GET['mapel']);
		$cek_jawaban_ada = "SELECT * FROM jawaban WHERE id_soal=$id_soal AND nisn=$nisn";
		$jawaban_ada = $conn->query($cek_jawaban_ada);
		while ($jwb = mysqli_fetch_array($jawaban_ada)) { 
				$id_jawaban = $jwb['id_jawaban'];
		}
		
		if($jawaban_ada->num_rows) {
			// if jawaban ada, maka update";
			$update_jawaban = "UPDATE `jawaban` SET `skor`='$skor_input' WHERE `jawaban`.`id_jawaban` = $id_jawaban;";
			$do_update = $conn->query($update_jawaban);
		}
		else {
			// jawaban belum ada, insert jawaban";
			$insert_jawaban = "INSERT INTO `jawaban` (`skor`, `id_soal`, `nisn`) VALUES ($skor_input,$id_soal,$nisn);";
			$do_insert = $conn->query($insert_jawaban);
		}
	}

    if(isset($_GET['jawaban'])) {
        //   jawaban ada
		$jawaban = urldecode($_GET['jawaban']);
		
		if($jawaban == $jawaban_benar) {
			// jawaban benar, skor  = 1";
			post_jawaban(1, $id_soal, $conn, $nisn);
		}
		else {
			// jawaban salah, skor = 0";
			post_jawaban(0, $id_soal, $conn, $nisn);
		}

	}
?>
    </ul>
    </div>
    </div>
  </div>
  <div class="row" style="margin-top:30px">
    <div class="d-grid col-4 mx-auto">
	<?php $prev_no = $no-1;
	if($no !=1) {
		echo '<a href="soal.php?no='.$prev_no.'&mapel='.$mapel.'" class="btn btn-primary" >Prev</a>';
	}?>
    </div>
    <div class="d-grid col-4 mx-auto">
    <a href="selesai.php?nisn=<?php echo $nisn ?>&mapel=<?php echo $mapel ?>" class="btn btn-primary" style="background-color:#ff3333;">Selesai</a>
    </div>
    <div class="d-grid col-4 mx-auto">
    <?php $next_no = $no+1;
	 echo '<a href="soal.php?no='.$next_no.'&mapel='.$mapel.'" class="btn btn-primary" >next</a>';?>
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