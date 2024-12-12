<?php
include('connect.php');

if (isset($_GET['islandOfPersonalityID'])) {
    $islandOfPersonalityID = $_GET['islandOfPersonalityID'];

    $islandQuery = "
        SELECT 
            islandcontents.*, 
            islandsofpersonality.name AS name,
            islandcontents.color AS color
        FROM islandcontents
        JOIN islandsofpersonality 
        ON islandcontents.islandOfPersonalityID = islandsofpersonality.islandOfPersonalityID
        WHERE islandcontents.islandOfPersonalityID = '$islandOfPersonalityID'
    ";

    $islandResult = executeQuery($islandQuery);

    if ($row = mysqli_fetch_assoc($islandResult)) {
        $name = $row['name']; 
        $color = $row['color']; // Get the color
        $firstRow = $row; 
    }

    $islandResult = executeQuery($islandQuery);
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $name; ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: <?php echo $color; ?>;
            color: white;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        h1 {
            font-family: 'Fredoka One', sans-serif;
            color: white; 
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background-color: rgba(0, 0, 0, 0.5);
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            text-decoration: none;
            z-index: 10;
        }

        .back-button:hover {
            background-color: rgba(255, 69, 0, 0.8);
            color: #fff;
        }

        .custom-image {
            width: 100%;
            max-width: 450px;
            height: auto;
            object-fit: cover;
            border-radius: 10px;
            display: block;
            margin: 0 auto; /* Center the image */
        }

        footer {
            background-color: <?php echo $color; ?>; 
        }

        footer a {
            color: #1e90ff;
            text-decoration: none;
        }

        footer a:hover {
            color: #87cefa;
        }
    </style>
</head>

<body>
    <a href="index.php" class="back-button">Back</a>

    <div class="container my-5">
        <div class="row">
            <div class="col-12 text-center mb-4">
                <h1><?php echo $name; ?></h1> 
            </div>
            <?php
            while ($row = mysqli_fetch_assoc($islandResult)) {
                $image = $row['image'];
                $content = $row['content'];
                ?>
                <div class="col-12 mb-4">
                    <div class="row gx-3 gy-4 align-items-center">
                        <div class="col-12 col-md-6 d-flex justify-content-center">
                            <img src="pictures/<?php echo $image; ?>" class="custom-image">
                        </div>
                        <div class="col-12 col-md-6 text-center">
                            <p style="font-size: 20px;"><?php echo $content; ?></p>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
    </div>

    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2024 Jalem's Core Memories. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
