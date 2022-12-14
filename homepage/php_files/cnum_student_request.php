<html>
    <body>
        Your requested information:
        <br>
        <br>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g20', '8CTKTqTV', 'cs332g20');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            // Given the course number list the sections of the course, including the classrooms, the meeting days and time, and the number of students enrolled in each section.
            $query = "SELECT DISTINCT section_num, classroom, meeting_days, begin_time, end_time
                      FROM sections NATURAL JOIN enrollments
                      WHERE course = " . $_GET["cnum"] . "
                      GROUP BY section_num, classroom, begin_time, end_time, meeting_days
                      ORDER BY section_num;";

            $result = mysqli_query($link, $query);
            if (!$result) {
                echo "Failed to run query: " . $mysqli -> error;
                exit();
            }
            echo "Course Number: " . $_GET["cnum"] . "<br>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "------------------------------------------<br>";
                echo "Section Number: " . $row["section_num"] . "<br>";

                // Get the number of students enrolled in the section
                $query2 = "SELECT COUNT(student_id) AS enrolled_students
                           FROM enrollments
                           WHERE course_section = " . $row["section_num"] . ";";
                $result2 = mysqli_query($link, $query2);
                if (!$result2) {
                    echo "Failed to run query that grabs student count: " . $mysqli -> error;
                    exit();
                }

                $row2 = mysqli_fetch_assoc($result2);
                echo "Classroom: " . $row["classroom"] . "<br>";
                echo "Meeting Days: " . $row["meeting_days"] . "<br>";
                echo "Beginning Time: " . $row["begin_time"] . "<br>";
                echo "End Time: " . $row["end_time"] . "<br>";
                echo "Enrolled Students: " . $row2["enrolled_students"] . "<br>";
                echo "<br>";
            }
            mysqli_free_result($result);
            mysqli_free_result($result2);
            $link->close();
        ?>
    </body>
</html>