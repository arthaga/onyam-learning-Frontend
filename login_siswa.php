<!doctype html>
<html lang="en">
  <head>
  <style>
    body{
      background-image: url("asset/wwwq.jpg");
      background-repeat: no-repeat;
      background-size: cover;
}

    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="bootstrap.min.css" rel="stylesheet" >

    <title>learnwithuus</title>
  </head>
  <body>
    <div class="container" >
  <div class="row justify-content-md-center">
    <div class="col-xs-8 col-md-4 "  style="background: #fff; margin-top: 5%; margin-bottom: 5%">
      <h4 style="margin-top: 20%">SELAMAT DATANG</h4>
      <hr>
      <form action="post_login_siswa.php" method="POST">
        <div class="form-grup">
          <label>Nisn</label>
          <input type="text" name="nisn" class="form-control" placeholder="masukkan nisn anda">
        </div>
        <div class="form-grup">
          <label>Password </label>
          <input type="password" name="password" class="form-control" placeholder="masukkan password anda">
        </div>
        <button type="submit" name="submit" class="btn btn-primary" style="margin-top: 5%; margin-bottom: 5%">SUBMIT</button>
        <button class="btn btn-danger">RESET</button>
    </div>
  </form>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>