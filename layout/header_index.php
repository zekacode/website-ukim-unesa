<?php
include('./conn/koneksi.php');
include('./conn/controller.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UKIM Unesa</title>
    <link rel="stylesheet" href="./layout/header_index.css">
    <script src="index.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav>
            <div class="logo-nav-container">
                <div class="logo">UKIM Unesa</div>
                <ul class="nav-links">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="list-artikel.php">Artikel</a></li>
                    <li><a href="list-karya.php">Karya Cipta</a></li>
                    <li><a href="list-event.php">Event</a></li>
                </ul>
            </div>
            <div class="login-container">
                <a href="login.php" class="btn-login">Login</a>
            </div>
        </nav>
    </header>