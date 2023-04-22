<?php
$type = $_POST["type"];
$title = $_POST["title"];
$tip = $_POST["tip"];
$con=$_POST["con"];


if (is_uploaded_file($_FILES["avatar"]["tmp_name"])) {
    $_FILES["avatar"]["name"]=$title;
move_uploaded_file($_FILES["avatar"]["tmp_name"], "../../pic/new_pic/".$type."/".$_FILES["avatar"]["name"].".jpg");
$name=$_FILES["avatar"]["name"];
// print "Saved uploaded file as ../../pic/new_pic".$name.".jpg\n";
    $pic_route = "../../pic/new_pic/".$type."/" . $name . ".jpg";
} else {
print "Error: required file not uploaded";
}
$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
$add = "INSERT INTO `$type` (`title`,`content`,`tips`,`pic_route`) VALUES('$title','$con','$tip','$pic_route')";
$db->exec($add);
?>
<script>
    alert("Upload success!");
    location.href='javascript:history.go(-2)';
</script>