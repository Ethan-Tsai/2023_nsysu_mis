<?php
    $db = new PDO("mysql:dbname=imdb_assignment;host=localhost","root", "");
    $rows=$db->query("SELECT * FROM `movies` WHERE `rank`='8.0' ORDER BY `year` ASC LIMIT 3");

?>
<table>
    <tr>
        <td>Name</td>
        <td>Rank</td>
        <td>Year</td>
    </tr>
    <?php
    foreach($rows as $row){
?>
    <tr>
        <td style="width: 600px;"><?=$row['name']?></td>
        <td><?=$row['rank'];?></td>
        <td><?=$row['year']?></td>
    </tr>
        
<?php
}
?>

</table>
<hr>

<table>
    <tr>
        <td>id</td>
        <td>Name</td>
        <td>Genre</td>
    </tr>

<?php
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $rows2=$db->query("SELECT * FROM `movies` m JOIN `movies_genres` mg ON m.id=mg.movie_id WHERE m.id LIKE'%24' AND mg.genre='action' LIMIT 3");
    foreach($rows2 as $row){
?>
            <tr>
                <td style="width:50px ;"><?=$row['id']?></td>
                <td style="width: 150px;"><?=$row['name'];?></td>
                <td><?=$row['genre']?></td>
            </tr>
                
        <?php
        }}else{
            $id=$_POST['id'];
            $mov=$_POST['mov'];
            $id=$db->quote($id);
            $mov=$db->quote($mov);
            
            $sql="UPDATE `movies` SET `name`=$mov WHERE `id`=$id";
            $db->exec($sql);
            $rows2=$db->query("SELECT * FROM `movies` m JOIN `movies_genres` mg ON m.id=mg.movie_id WHERE m.id LIKE'%24' AND mg.genre='action' LIMIT 3");
            foreach($rows2 as $row){
?>
                <tr>
                    <td style="width:50px ;"><?=$row['id']?></td>
                    <td style="width: 150px;"><?=$row['name'];?></td>
                    <td><?=$row['genre']?></td>
                </tr>
                    
            <?php
            }
        }
        ?>

</table>
     
<br>
<form action="./1201_inclass.php" method="post">
Change Name of movie with id:
<input type="text" name="id">
to:
<input type="text" name="mov">
<input type="submit" value="Change">
</form>


<!--
SELECT * FROM `movies` WHERE `rank`='8.0' ORDER BY `year` ASC LIMIT 3
,,,,,,,
SELECT * FROM `movies` m JOIN `movies_genres` mg ON m.id=mg.movie_id WHERE m.id LIKE'%24' AND mg.genre='action' LIMIT 3
-->