<script>
    alert("a");
    </script>
<?php

if (is_uploaded_file($_FILES["avatar"]["tmp_name"])) {
    $_FILES["avatar"]["name"]="post1";
move_uploaded_file($_FILES["avatar"]["tmp_name"], "pic/".$_FILES["avatar"]["name"].".jpg");
$name=$_FILES["avatar"]["name"];
print "Saved uploaded file as pic/".$name.".jpg\n";

} else {
print "Error: required file not uploaded";
}

?>
</script>

<a href="./inclass_1117.php">back</a>
