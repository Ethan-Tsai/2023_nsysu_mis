<?php
    $show=false;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,IE=chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./index.css">
    <title>1117_inclass</title>

</head>

<body>
    <!--head-->
    <div id="head">
        <h1>Ethan Tsai</h1>
        <img src="./111.jpg" alt="headshot">
        <!--login-->

<?php   #check if already login by COOKIE
        if (isset($_COOKIE["log_web_1117"])){
            $log_name=$_COOKIE["log_web_1117"];
?>
            <div class="login">
                <p>
<?php               echo $log_name. " logged in";
                    $show=true;
?>
                </p>
            </div>
<?php   #not yet login
        }
        else{
            if ($_SERVER["REQUEST_METHOD"] == "GET") {
?>      
        <!--normal GET request; display self-submitting form-->
        <form action="./index.php" method="post" class="login">
            Username: <input type="text" name="Username"/> <br><br>
            Password: <input type="password" name="Password" /> <br><br>
            <input type="submit" value="Submit">
        </form>
<?php       # POST request; user is submitting form back to here; process it
            } 
            elseif ($_SERVER["REQUEST_METHOD"] == "POST") {

                $user=$_POST["Username"];
                $pass=$_POST["Password"];

                #correct user and correct password
                if ($user=="web"&&$pass=="programming") {
                    setcookie("log_web_1117","web",time()+3600);
                    #set cookie to rember login
?>                  
                    <div class="login">
                        <p>
<?php                       echo $user. " logged in";
                            $show=true;
?>
                        </p>
                    </div>
<?php
                }
                #not correct show wrong message
                else{
?>
                    <form action="./index.php" method="post" class="login">
                        <p id="red">Incorrect login information</p><br>
                        Username: <input type="text" name="Username"/> <br><br>
                        Password: <input type="password" name="Password" /> <br><br>
                        <input type="submit" value="Submit">
                    </form>
<?php
                }
            }
        }
?>
        <!--login-->
    </div>
    <!--head-->
    
<?php
    if($show){
?>
    <!--content-->
    <div id="content">
    <p>
        Hello, I am <em>Ethan Tsai</em> and I was <strong>tested postive for covid</strong> last week.
        <br> As a result, I take class with <a href="https://zoomnow.net/" target="_blank">ZOOM</a> today.
        <br> <a href="https://www.nsysu.edu.tw/" target="_blank">Link to nsysu</a>
        <!--use target _blank to open new page-->
    </p>

    <blockquote>All that glitters is not gold.</blockquote>

    <h3>Expertise</h3>
    <ol>
        <li id="list1"><span>Playing violin</span></li>
        <li id="list2">Teaching Piano</li>
    </ol>

    <h3>Projects</h3>

    <table>
        <tr>
            <th>Year</th>
            <th>Project</th>
        </tr>
        <tr>
            <td>2022</td>
            <td>final project for course_mis102: thunder strike(a shooting game)</td>
        </tr>
        <tr>
            <td>2021</td>
            <td>Implementation in digital system course: 4-bit Ripple Counter </td>
        </tr>

    </table>

    </div>
    <!--content-->
<?php
    }
?>
</body>




</html>