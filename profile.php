<?php
include_once('session_user.php');
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title> profile </title>
  </head>
  <body>
      <?php
        include_once('header.php');
        echo '<div class="row gy-5" style="margin-top: 0.5%">';
        echo '<div class="col-xs-6 col-md-4 ">';
        echo '<div class="container">';
      $nisn=$_SESSION['nisn'];
        $sql = "SELECT * FROM user WHERE nisn= $nisn";
        $result = $conn->query($sql);
        while ($rows = mysqli_fetch_array($result)) {
          echo '<img src=image/'.$rows['foto'].' class="rounded-circle mx-auto d-block mb-4" alt="Cinque Terre" width="200" height="200">';
          echo '<h4 style="text-align: center">'.$rows['nama'].'</h4>';    
        }
      ?>        
        </div>
    </div>
      <div class="col-xs-12 col-md-8 ">
      <div class="container">
      <?php
                    // Include config file
                    require_once "conec.php";

                      $sql = "SELECT * FROM nilai where nisn= $nisn";
                      // $sql = "SELECT * FROM jawaban.skor,user.nis RIGHT JOIN jawaban ON user.nisn=jawaban.nisn WHERE jawaban.nisn=''$nisn ";
                      if($result = mysqli_query($conn, $sql)){
                        if(mysqli_num_rows($result)){
                            $totalskor="";
                          // $totalskor = (int)$totalskor+(int)$row['skor']*4;
                            echo "<h2>Score</h2>";
                                echo "<p>Ini adalah hasil dari Nilai simulasi UAS anda</p> ";
                                    echo "<table class='table table-dark'>";
                                        echo "<thead>";
                                        echo "<tr>";
                                        echo "<th>Matapelajaran</th>";
                                        // echo "<th>Benar</th>";
                                        echo "<th>Nilai</th>";
                                        echo "</tr>";
                                    echo "</thead>";
                                
                                while($row = mysqli_fetch_array($result)){
                                  echo "<tbody>";
                                    echo "<tr>";
                                        echo "<td>" . $row['mapel'] . "</td>";
                                        echo "<td>" . $row['nilai']. "</td>";
                                        // $nilai_ = $row['nilai']*4;
                                        // echo "<td>$$totalskor</td>";
                              }
                                echo "</tbody>";
                            echo "</table>";
                            // Free result set
                            mysqli_free_result($result);
                        } else{
                            echo "<p class='lead'><em>belom ada record nilai.</em></p>";
                        }
                    } else{
                        echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
                    }

                    // Close connection
                    mysqli_close($conn);
                  
                    ?>
        </div>
                  </div>
           
    <div class="d-grid gap-2 col-6 mx-auto" style="margin-top: 2%; margin-bottom: 2%">
    <a href="logout.php" class="btn btn-primary" >logout</a>
    <a href="#" class="btn btn-primary" onclick="window.print();">CETAK</a>
      </div>
      <?php
      include_once('footer.php');
      ?>

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