<?php
include("predefined.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge IE=chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inclass_1110</title>
</head>
<body>
    <h1>
        Ethan Tsai
    </h1>
    <h3>
<?php
    echo "Year is \"{$year}\"";
?>
    </h3>
    <h3>
<?php
    $split_para=explode(" ",$para);
    echo "3rd word in paragraph is \"{$split_para[2]}\"";
?>
    </h3>
    <h3>
<?php
    echo "Random number from predefined is \"{$random_number}\"";
?>
    </h3>
    <h3>
<?php
    $get_string=getStringValue();
    echo "String from function getStringValue is \"{$get_string}\"";
?>
    </h3>
</body>
</html>