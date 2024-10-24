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

        move_uploaded_file($file_tmp, "images/" . $file_name);

    } else {
        $file_name = "";
    }

    $title = $_POST['title'];
    $heading = $_POST['heading'];
    // $img = $_POST['img'];




    $result = mysqli_query($conn, "INSERT INTO service (title,img,heading)
    VALUES ('$title','$file_name','$heading')");

    ?>
    <script language="javascript">
        window.location.href = "service.php";
    </script>
    <?php


} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $heading = mysqli_real_escape_string($conn, $_POST['heading']);



    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "images/" . $file_name);
        $result = mysqli_query($conn, "UPDATE service SET img='$file_name' WHERE id='$id'");
    }

    $result = mysqli_query($conn, "UPDATE service SET title='$title',heading='$heading' WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "service.php?id=<?php echo $id; ?>";
        </script>

    <?php

} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM service WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "service.php";
        </script>
    <?php
}
?>