<!DOCTYPE html>
<html lang="en">
	<head>
		<mete charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
	</head>
	<body>
		<h2>Products from Postgresql database using PG extension.</h2>

		<?php
		$connection = odbc_connect("host=localhost dbname=Client_Server user=postgres password=password");
		if (!$connection) {
			echo "An error occurred.<br>";
			exit;
		}

		$result = pg_query($connection, "SELECT user_id FROM users");
		if (!$result) {
			echo "An error occurred.<br>";
			exit;
		}
		?>

		<table>
			<tr>
				<th>ID:</th>	
			</tr>
			<?php
			while ($row = pg_fetch_assoc($result)) {
				echo "
					<tr><td>$row[user_ID]</td>
				</tr>"
				;
			}
			?>

	</body>
</html>