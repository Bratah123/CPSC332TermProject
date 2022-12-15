<html>
    <body>
        Your requested information for Course Number and Section Number: <?php echo $_GET["cnum"]; ?>, <?php echo $_GET["snum"]; ?>
        <br>
        <br>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g20', '8CTKTqTV', 'cs332g20');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            // Given a course number and a section number, count how many students get each distinct grade, 'A+', 'B' for each course.
            $query = "SELECT grade, COUNT(grade) AS grade_count FROM enrollments WHERE course_section = " . $_GET["snum"] . " GROUP BY grade;";
            $result = mysqli_query($link, $query);
            if (!$result) {
                echo "Failed to run query: " . $mysqli -> error;
                exit();
            }
            echo "Course Number: " . $_GET["cnum"] . "<br>";
            echo "Section Number: " . $_GET["snum"] . "<br>";
            echo "Grade Count for each grade: <br>";
            echo "------------------------------------------<br>";
            $grades = array(
                'A+' => 0,
                'A' => 0,
                'A-' => 0,
                'B+' => 0,
                'B' => 0,
                'B-' => 0,
                'C+' => 0,
                'C' => 0,
                'C-' => 0,
                'D+' => 0,
                'D' => 0,
                'D-' => 0,
                'F' => 0,
            );
            // Display every possible letter grade and the number of students who got that grade
            while ($row = mysqli_fetch_assoc($result)) {
                $grades[$row["grade"]] = $row["grade_count"];
            }
            foreach ($grades as $key => $value) {
                echo $key . ": " . $value . "<br>";
            }
        ?>
    </body>
</html>