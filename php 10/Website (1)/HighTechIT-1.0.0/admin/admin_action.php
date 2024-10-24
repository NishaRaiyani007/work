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

    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $contect = $_POST['contect'];
    $icon_fb = $_POST['icon_fb'];
    $icon_twitter = $_POST['icon_twitter'];
    $icon_insta = $_POST['icon_insta'];
    $description = $_POST['description'];


    $result = mysqli_query($conn, "INSERT INTO contact (name,email,password,contect,icon_fb,icon_twitter,icon_insta,description)
    VALUES ('$name','$file_name','$email','$password','$contect','$icon_fb','$icon_twitter',$icon_insta,'$description')");

    ?>
    <script language="javascript">
        window.location.href = "admin.php?id";
    </script>
    <?php

} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $contect = mysqli_real_escape_string($conn, $_POST['contect']);
    $icon_fb = mysqli_real_escape_string($conn, $_POST['icon_fb']);
    $icon_twitter = mysqli_real_escape_string($conn, $_POST['icon_twitter']);
    $icon_insta = mysqli_real_escape_string($conn, $_POST['icon_insta']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);


    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "images/" . $file_name);

    }

    $result = mysqli_query($conn, "UPDATE admin SET name='$name',email='$email',password='$password',contect='$contect',icon_fb='$icon_fb',icon_twitter='$icon_twitter',icon_insta='$icon_insta',description='$description' WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "admin.php?id=<?php echo $id; ?>";
        </script>
    <?php
} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM admin WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "admin.php";
        </script>
    <?php
}
?>