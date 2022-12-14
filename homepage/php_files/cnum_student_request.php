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
            // Given the course number list the sections of the course, including the classrooms, the meeting days and time, and the number of students enrolled in each section.
            $query = "SELECT DISTINCT section_number, classroom, meeting_days, meeting_time, COUNT(student_id) AS enrolled_students
                        FROM section NATURAL JOIN enrollment
                        WHERE course_number = " . $_GET["cnum"] . "
                        GROUP BY section_number, classroom, meeting_days, meeting_time
                        ORDER BY section_number";
            $result = mysqli_query($link, $query);
            if (!$result) {
                echo "Failed to run query: " . $mysqli -> error;
                exit();
            }
            echo "Course Number: " . $_GET["cnum"] . "<br>";
            echo "Sections: <br>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "Section Number: " . $row["section_number"] . "<br>";
                echo "Classroom: " . $row["classroom"] . "<br>";
                echo "Meeting Days: " . $row["meeting_days"] . "<br>";
                echo "Meeting Time: " . $row["meeting_time"] . "<br>";
                echo "Enrolled Students: " . $row["enrolled_students"] . "<br>";
                echo "<br>";
            }
            mysqli_free_result($result);
            $link->close();
        ?>
    </body>
</html>