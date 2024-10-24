<?php
session_start();


include('./config.php');

if (isset($_POST["save"])) {

    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {


        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "assets/images/" . $file_name);
    } else {
        $file_name = "";
    }

    $title = $_POST['title'];
    $heading = $_POST['heading'];
    $desription = $_POST['description'];
    $icon = $_POST['icon'];
    $icon_link = $_POST['icon_link'];
    $map = $_POST['map'];


    $result = mysqli_query($conn, "INSERT INTO contact (title,img,heading,description,icon,icon_link,map)
    VALUES ('$title','$file_name','$heading','$desription','$icon','$icon_link',$map)");

    ?>
    <script language="javascript">
        window.location.href = "contact.php?id";
    </script>
    <?php

} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $heading = mysqli_real_escape_string($conn, $_POST['heading']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $icon = mysqli_real_escape_string($conn, $_POST['icon']);
    $icon_link = mysqli_real_escape_string($conn, $_POST['icon_link']);
    $map = mysqli_real_escape_string($conn, $_POST['map']);


    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "assets/images" . $file_name);
    }

    $result = mysqli_query($conn, "UPDATE contact SET title='$title',heading='$heading',description='$description',icon='$icon',icon_link='$icon_link',map='$map' WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "contact.php?id=<?php echo $id; ?>";
        </script>
    <?php
} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM contact WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "contact.php";
        </script>
    <?php
}
?>