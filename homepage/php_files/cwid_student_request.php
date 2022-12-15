<html>
    <body>
        Your requested information for CWID: <?php echo $_GET["cwid"]; ?>
        <br>
        <br>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g20', '8CTKTqTV', 'cs332g20');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            // Given the CWID of a student, list all courses the student took and their grades for that course.
            // Grab the course name given the section number
            $query = "SELECT course, grade, title FROM (enrollments JOIN sections ON course_section = section_num) JOIN courses ON course = course_num
                        WHERE student_id = " . $_GET["cwid"] . ";";
            $result = mysqli_query($link, $query);
            if (!$result) {
                echo "Failed to run query: " . $mysqli -> error;
                exit();
            }
            echo "CWID: " . $_GET["cwid"] . "<br>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "------------------------------------------<br>";
                echo "Course Number: " . $row["course"] . "<br>";
                echo "Course: " . $row["title"] . "<br>";
                echo "Grade: " . $row["grade"] . "<br>";
                echo "<br>";
            }
            mysqli_free_result($result);
            $link->close();
        ?>
    </body>
</html>