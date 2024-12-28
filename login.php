<?php
include('./conn/controller.php');
include('./conn/koneksi.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - UKIM Unesa</title>
    <link rel="stylesheet" href="./style/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="login-wrapper">
        <div class="login-form-container">
            <h2>Login</h2>
            <form action="login.php" method="POST">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" required>

                <label for="password">Password</label>
                <input type="password" name="password" id="password" required>

                <button type="submit" class="btn-login" name="login">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
