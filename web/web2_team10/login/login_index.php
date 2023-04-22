<?php
session_start();
if (isset($_SESSION["web_project"])) {
    echo "<script>";
    echo "alert('您已登入');";
    echo "location.href='../index.php';";
    echo "</script>";
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge IE=chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./logcss.css">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> -->
    <title>login_index</title>
</head>
<?php
include("./nav_bartest.php");
?>
<body>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-5">
                <form action="member.php" method="post">

                    <input type="hidden" id="method" name="method" value="1">

                    <div class="mb-3">
                        <label for="acc" class="form-label">Account</label>
                        <input type="text" class="form-control" id="acc" name="acc">

                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label">Password</label>
                        <input type="password" class="form-control" id="pass" name="pass">
                    </div>

                    <button type="submit" class="btn btn-outline-primary">Sign in</button>
                </form>
                <p></p>
                <!--空行-->
                <!-- Button trigger modal -->
               
                <p></p>
                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#reg">
                    Sign up
                </button>
            </div>

        </div>
        <!-- Modal -->
        <div class="modal fade" id="reg" tabindex="-1" aria-labelledby="reglabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="reglabel">Join us now!</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="member.php" method="post">

                            <input type="hidden" id="method" name="method" value="0">

                            <div class="mb-3">
                                <label for="acc" class="form-label">Account</label>
                                <input type="text" class="form-control" id="acc" name="acc">

                            </div>
                            <div class="mb-3">
                                <label for="pass" class="form-label">Password</label>
                                <input type="password" class="form-control" id="pass" name="pass">
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-outline-success">Sign up</button>
                            </div>

                        </form>
                    </div>
                   
                </div>
            </div>
        </div>
        Not now?<button onclick="history.back()" class="btn btn-outline-danger">Back</button>
    </div>




</body>

</html>