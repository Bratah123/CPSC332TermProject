<html>
    <body>
        Your requested information:
        <br>
        Course Number: <?php echo $_GET["cnum"]; ?>
        <br>
        <br>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g20', '8CTKTqTV', 'cs332g20');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            echo 'Connected successfully to the database!';
            $link->close();
        ?>
    </body>
</html>