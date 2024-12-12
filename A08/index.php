<?php
include('connect.php');

$query = "SELECT * FROM islandsofpersonality";
$result = executeQuery($query);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Core Memories - Inside Out</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background-color: #1D2951;
            color: white;
            font-family: 'Fredoka One', sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar .nav-link {
            color: white;
            font-weight: bold;
            text-decoration: none;
            position: relative;
            display: inline-block;
            font-size: 20px;
        }

        .navbar {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: sticky;
        }

        @keyframes jump {
            0% {
                transform: translateY(0);
            }

            30% {
                transform: translateY(-10px);
            }

            50% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-5px);
            }
        }

        .navbar .nav-link:hover {
            animation: jump 0.5s ease-in-out;
            color: white;
        }

        header {
            background-color: #1D2951;
            color: white;
            padding: 100px 16px;
            text-align: center;
        }

        #projects {
            background-color: #1D2951;
            padding: 50px 0;
            color: white;
            text-align: center;
        }

        #projects img {
            max-width: 100%;
            height: auto;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(255, 0, 0, 0.7);
            transition: transform 0.3s ease-in-out;
        }

        #projects img:hover {
            transform: scale(1.1);
            border: 3px solid red;
        }

        .title1 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        footer {
            background-color: #1D2951;
            color: white;
            padding: 20px 10px;
            text-align: center;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 1);
        }

        footer i {
            margin: 10px;
            transition: opacity 0.3s ease;
        }

        footer i:hover {
            opacity: 0.7;
            color: red;
        }

        footer a {
            color: white;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand">Core Memories</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/WD-BE/index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#projects">Island of Personality</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header>
        <h1>Core Memories</h1>
        <p class="fs-4">Explore the Islands of Personality</p>
    </header>

<div id="projects" class="container">
    <h1 class="title1 text-center">Jalem's Island of Personality</h1>
    <p class="fs-5 text-center">Click the images below to be redirected to specific Islands of Personality.</p>
    <div class="row g-4 justify-content-center">
        <?php
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $islandOfPersonalityID = $row['islandOfPersonalityID'];
                $image = $row['image'];
                ?>
                <div class="col-12 col-sm-6 col-md-3 text-center">
                    <a href="view.php?islandOfPersonalityID=<?php echo $islandOfPersonalityID; ?>">
                        <img src="pictures/<?php echo $image; ?>" class="img-fluid mx-auto">
                    </a>
                </div>
                <?php
            }
        }
        ?>
    </div>
</div>

    <footer>
        <div class="container">
            <div class="d-flex justify-content-center mb-4" style="font-size: 1.5rem;">
                <a href="https://www.facebook.com/jalem09" target="_blank" class="me-4">
                    <i class="fa fa-facebook-official"></i>
                </a>
                <a href="https://www.instagram.com/_j.luissss" target="_blank" class="me-4">
                    <i class="fa fa-instagram"></i>
                </a>
                <a href="https://myaccount.google.com" target="_blank" class="me-4">
                    <i class="fa fa-envelope"></i>
                </a>
                <a href="https://github.com/jalemgrapani" target="_blank">
                    <i class="fa fa-github"></i>
                </a>
            </div>
            <p style="font-size: 1.2rem; margin-top: 10px;">
                Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
            </p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
