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
    // $profile = $_POST['profile'];
    $pro_name = $_POST['pro_name'];
    $desription = $_POST['description'];


    $result = mysqli_query($conn, "INSERT INTO testimonial (title,profile,heading,pro_name,description)
    VALUES ('$title','$file_name','$heading','$pro_name','$desription')");

    ?>
    <script language="javascript">
        window.location.href = "testimonial.php?id";
    </script>
    <?php

} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $heading = mysqli_real_escape_string($conn, $_POST['heading']);
    //$profile = mysqli_real_escape_string($conn, $_POST['profile']);
    $pro_name = mysqli_real_escape_string($conn, $_POST['pro_name']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);


    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "images/" . $file_name);
        $result = mysqli_query($conn, "UPDATE testimonial SET profile='$file_name' WHERE id='$id'");

    }

    $result = mysqli_query($conn, "UPDATE testimonial SET title='$title',heading='$heading',pro_name='$pro_name',description='$description'WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "testimonial.php?id=<?php echo $id; ?>";
        </script>
    <?php
} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM testimonial WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "testimonial.php";
        </script>
    <?php
}
?>