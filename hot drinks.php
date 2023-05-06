<!DOCTYPE html>
<html>
<head>
    <title>Hot drinks</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Hot drinks category</h1>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">MENU</a></li>
                <li><a href="#">REVIEW</a></li>
                <li><a href="#">CONTACT US</a></li>
            </ul>
        </nav>
    </header>
    <main>
    <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "cafee";

            // Create connection
            $con = mysqli_connect($servername, $username, $password, $dbname);

            // Check connection
            if (!$con) {
                die("Connection failed: " . mysqli_connect_error());
            }

            $sql = "SELECT * FROM `product` WHERE `categoryID`='5'";
            $result = mysqli_query($con, $sql);
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<section>";
                    echo "<div class='product'>";
                    echo "<img src='" . $row["image"] . "'>";
                    echo "<h2 style='font-size: 20px;'>" . $row["proName"] . "</h2>";
                    echo "<p>" . $row["description"] . "</p>";
                    echo "<p><strong>" . $row["price"] . "</strong></p>";
                    echo "<button class='customize-btn'><a href='customize.php?id=" . $row["ID"] . "'>Customize</a></button>";
                    echo "</div>";
                    echo "</section>";
                }
            } else {
                echo "0 results";
            }

            mysqli_close($con);
        ?>
        <footer class="footer">
            <p>© 2023 Cup Of Joy. All rights reserved.</p>
        </footer>
    </main>
</body>
</html>