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
    $desription = $_POST['description'];


    $result = mysqli_query($conn, "INSERT INTO counter (title,description)
    VALUES ('$title','$file_name','$desription')");

    ?>
    <script language="javascript">
        window.location.href = "counter.php?id";
    </script>
    <?php



} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);

    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "assets/images" . $file_name);
    }

    $result = mysqli_query($conn, "UPDATE counter SET title='$title',description='$description' WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "counter.php?id=<?php echo $id; ?>";  
        </script>
        <?php

        ?>

    <?php
} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM counter WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "counter.php";
        </script>
    <?php
}
?>