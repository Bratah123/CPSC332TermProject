<html>
    <body>
        Your requested information for Social Security Number: <?php echo $_GET["ssn"]; ?>
        <br>
        <br>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g20', '8CTKTqTV', 'cs332g20');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            // Given the ssn of a professor, list the titles, classrooms, meeting days and time of his/her classes
            $query = "SELECT courses.title, classroom, meeting_days, begin_time, end_time 
                        FROM (professors JOIN sections ON ssn = p_ssn) JOIN courses ON course_num = course
                        WHERE ssn = " . $_GET["ssn"] . ";";

            $result = mysqli_query($link, $query);
            if (!$result) {
                echo "Failed to run query: " . $mysqli -> error;
                exit();
            }
            echo "---Professor with SSN: " . $_GET["ssn"] .  "'s Classes---<br>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "------------------------------------------<br>";
                echo "Course: " . $row["title"] . "<br>";
                echo "Classroom: " . $row["classroom"] . "<br>";
                echo "Meeting Days: " . $row["meeting_days"] . "<br>";
                echo "Meeting Time: " . $row["begin_time"] . " - " . $row["end_time"] . "<br>";
                echo "<br>";
            }
            mysqli_free_result($result);
            $link->close();
        ?>
    </body>
</html>