<?php
include_once('session_user.php');
?>

<!doctype html>
<html lang="en">
<head>
<style>
    body{
      background-image: url("asset/bgsiswa.jpg");
      background-repeat: no-repeat;
      background-size: cover;
}

    </style>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title> Dashboard </title>
</head>

<body>
<?php
include_once('header.php');
?>


  


  <div class="row gy-5" style="margin-top: 5%; margin-bottom: 5%">
    <div class="col-xs-12 col-md-4 ">
      <div class="card mx-auto" style="width: 18rem;">
        <img src="asset/bindop.jpg" style="width: 285px; height: 200px" class="card-img-top" alt="bahasa indonesia">
        <a href="soal.php?no=1&mapel=bahasa%20indonesia">
          <div class="card-body">
          <h5 class="card-title" style="text-align: center">Bahasa Indonesia</h5>
        </div>
      </a>
      </div>
    </div>
    <div class="col-xs-12 col-md-4 ">
      <div class="card mx-auto" style="width: 18rem;">
        <img src="asset/mtk.jpg" style="width: 285px; height: 200px" class="card-img-top" alt="matematika">
        <a href="soal.php?no=1&mapel=matematika">
        <div class="card-body">
          <h5 class="card-title" style="text-align: center">Matematika</h5>
        </div>
      </a>
      </div>
    </div>
    <div class="col-xs-12 col-md-4 ">
      <div class="card mx-auto" style="width: 18rem;">
        <img src="asset/binggris.jpg" style="width: 285px; height: 200px"  class="card-img-top" alt="bahasa inggris">
        <a href="soal.php?no=1&mapel=bahasa%20inggris">
        <div class="card-body">
          <h5 class="card-title" style="text-align: center">Bahasa Inggris</h5>
        </div>
      </a>
      </div>
    </div>
  </div>

  <?php
include_once('footer.php');
?>
  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>