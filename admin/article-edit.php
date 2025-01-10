<?php
include('./layout/header-admin.php');

// Jika id_blog tidak ada di URL, redirect ke halaman daftar article (article.php)
if (!isset($_GET['id'])) {
    header("Location: article.php");
    exit;
}

$id_blog = mysqli_real_escape_string($conn, $_GET['id']);

// Fetch data artikel
$sql = "SELECT * FROM blog_ukim WHERE id_blog = '$id_blog'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

if (!$row) {
    echo "Blog tidak ditemukan.";
    exit;
}

// Ambil semua enum departemen
$queryEnum = "SHOW COLUMNS FROM blog_ukim LIKE 'departemen'";
$resultEnum = mysqli_query($conn, $queryEnum);
$rowEnum = mysqli_fetch_assoc($resultEnum);

preg_match("/^enum\((.*)\)$/", $rowEnum['Type'], $matches);
$departemenValues = str_getcsv($matches[1], ',', "'");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $departemen = mysqli_real_escape_string($conn, $_POST['departemen']);
    $judul = mysqli_real_escape_string($conn, $_POST['judul']);
    $isi = mysqli_real_escape_string($conn, $_POST['isi']);
    $gambar = $row['gambar'];

    if (!empty($_FILES['gambar']['name'])) {
        $nama_file = basename($_FILES['gambar']['name']);
        $tmp_file = $_FILES['gambar']['tmp_name'];
        $path_db = "./asset/gbr_blog/" . $nama_file;
        if (move_uploaded_file($tmp_file, "../asset/gbr_blog/" . $nama_file)) {
            $gambar = $path_db;
        } else {
            echo "Gagal mengunggah gambar.";
        }
    }

    $sql_update = "UPDATE blog_ukim SET departemen='$departemen', judul='$judul', gambar='$gambar', isi='$isi' WHERE id_blog='$id_blog'";
    if (mysqli_query($conn, $sql_update)) {
        header("Location: article.php");
        exit;
    } else {
        echo "Gagal mengupdate data.";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Artikel</title>
</head>
<body>
    <div class="main-table">
        <h3 class="mb-3">Edit Artikel</h3>
        <form method="POST" enctype="multipart/form-data">
            <div class="mb-3 col-6">
                <label for="departemen" class="form-label">Departemen</label>
                <select name="departemen" id="departemen" class="form-control" required>
                    <?php foreach ($departemenValues as $value): ?>
                        <option value="<?= htmlspecialchars($value); ?>" 
                            <?= $value === $row['departemen'] ? 'selected' : ''; ?>>
                            <?= htmlspecialchars($value); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="mb-3">
                <label for="judul" class="form-label">Judul</label>
                <input type="text" class="form-control" name="judul" id="judul" value="<?= htmlspecialchars($row['judul']); ?>" required>
            </div>
            <div class="mb-3">
                <label for="gambar" class="form-label">Gambar</label>
                <input type="file" class="form-control" name="gambar" id="gambar">
            </div>
            <div class="mb-3">
                <label for="isi" class="form-label">Isi</label>
                <textarea class="form-control" name="isi" id="isi" rows="5" required><?= htmlspecialchars($row['isi']); ?></textarea>
            </div>
            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div>
</body>
</html>
