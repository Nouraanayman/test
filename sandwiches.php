<!DOCTYPE html>
<html>
<head>
	<title>Sandwiches</title>
	<link rel="stylesheet" href="styles.css">
</head>
<body>
	<header>
		<h1>Sandwiches</h1>
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

	<div class="viewall">
	<center>
	<table border="2" width="300" height="250">	
	<tr>
	<td>id</td>
	<td>name</td>
	<td>description</td>
	<td>price</td>
	<td>image</td>
   </tr>
   
   <?php
   include('conn.php'); // Include the database connection code
   
   $query = "SELECT * FROM sandwiches";
   $records = mysqli_query($con, $query);

   while($data = mysqli_fetch_array($records))
   {
   ?>
   <tr>
	   <td><?php echo $data['id']; ?></td>
	   <td><?php echo $data['name']; ?></td>
	   <td><?php echo $data['description']; ?></td>
	   <td><?php echo $data['price']; ?></td>
	   <td><img class="ig" src="<?php echo $data['image'];?>"/></td>
	   <td><a href="edit.php?id=<?php echo $data['id']; ?>">Edit</a></td>
	   <td><a href="delete.php?id=<?php echo $data['id']; ?>">Delete</a></td>
   </tr>
   <?php
   }
   mysqli_close($con); // Close the database connection
   ?>
   </center>
   </table>

	<footer class="footer">
		<p>© 2023 Cup Of Joy. All rights reserved.</p>
	</footer>
	
</body>
</html>