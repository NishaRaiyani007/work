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
    //$profile = $_POST['profile'];
    $pro_date = $_POST['pro_name'];
    $desription = $_POST['description'];
    $pro_fb = $_POST['pro_fb'];
    $pro_fb = $_POST['pro_twitter'];
    $pro_fb = $_POST['pro_insta'];
    $pro_fb = $_POST['pro_in'];


    $result = mysqli_query($conn, "INSERT INTO team (title,profile,heading,pro_name,description,pro_fb,pro_twitter,pro_insta,pro_in)
    VALUES ('$title','$file_name','$heading','$pro_name','$desription','$pro_fb','$pro_twitter','$pro_insta','$pro_in')");

    ?>
    <script language="javascript">
        window.location.href = "team.php?id";
    </script>
    <?php


} else if (isset($_POST["update"])) {

    echo $id = $_POST['id'];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $heading = mysqli_real_escape_string($conn, $_POST['heading']);
    //$profile = mysqli_real_escape_string($conn, $_POST['profile']);
    $pro_name = mysqli_real_escape_string($conn, $_POST['pro_name']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $pro_fb = mysqli_real_escape_string($conn, $_POST['pro_fb']);
    $pro_fb = mysqli_real_escape_string($conn, $_POST['pro_twitter']);
    $pro_fb = mysqli_real_escape_string($conn, $_POST['pro_insta']);
    $pro_fb = mysqli_real_escape_string($conn, $_POST['pro_in']);



    $file_name_og = $_FILES['image']['name'];
    if ($file_name_og != "") {

        $file_name_og = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];

        $sp_remove = str_replace(" ", "_", $file_name_og);
        $rand_num = (rand(99999999, 99999999999));

        $file_name = $rand_num . '' . $sp_remove;

        move_uploaded_file($file_tmp, "images/" . $file_name);
        $result = mysqli_query($conn, "UPDATE service SET profile='$file_name' WHERE id='$id'");
    }

    $result = mysqli_query($conn, "UPDATE team SET title='$title',heading='$heading',pro_name='$pro_name',description='$description',pro_fb='$pro_fb',pro_twitter='$twitter',pro_insta='$pro_insta',pro_in='$pro_in' WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "team.php?id=<?php echo $id; ?>";
        </script>
    <?php
} else {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "DELETE FROM team WHERE id='$id'");
    ?>
        <script language="javascript">
            window.location.href = "team.php";
        </script>
    <?php
}
?>