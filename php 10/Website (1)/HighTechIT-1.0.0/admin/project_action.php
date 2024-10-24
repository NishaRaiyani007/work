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



    $result = mysqli_query($conn, query: "INSERT INTO project (title,img,heading)
    VALUES ('$title','$file_name','$heading')");

    ?>
    <script language="javascript">
        window.location.href = "project.php?id";
    </script>
    <?php


} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $heading = mysqli_real_escape_string($conn, $_POST['heading']);
    $img = mysqli_real_escape_string($conn, $_POST['img']);


    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "images/" . $file_name);
        $result = mysqli_query($conn, "UPDATE project SET img='$file_name' WHERE id='$id'");

    }

    $result = mysqli_query($conn, "UPDATE project SET title='$title',heading='$heading' WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "project.php?id=<?php echo $id; ?>";      
        </script>
    <?php
} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM project WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "project.php";        
        </script>
    <?php
}
?>