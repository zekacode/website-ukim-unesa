<?php
include('../conn/koneksi.php');
include('../conn/controller.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Blog</title>
    <link rel="stylesheet" href="./style/admin.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> <!-- Link Font Awesome untuk ikon -->
</head>
<body>
    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="logo">UKIM Admin</div>
        <nav class="nav">
            <ul>
                <li><a href="admin.php"><i class="fas fa-home"></i> Dashboard</a></li>
                <li><a href="article.php"><i class="fas fa-blog"></i> Blog</a></li>
                <li><a href="karya.php"><i class="fas fa-pencil-alt"></i> Karya Cipta</a></li>
                <li><a href="event.php"><i class="fas fa-calendar-alt"></i> Event</a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
        <!-- Top Navigation -->
        <header class="top-nav">
            <div class="welcome">
                <span>Halo, Admin</span>
            </div>
        </header>