<?php
include('./layout/header-admin.php');

// Proses Tambah Blog
if (isset($_POST['tambah'])) {
    if (tambah_blog($_POST, $_FILES) > 0) {
        echo "<script>
            alert('Blog Baru Berhasil Ditambahkan');
            document.location.href = 'article.php';
        </script>";
    } else {
        echo "<script>
            alert('Blog Baru Gagal Ditambahkan');
            document.location.href = 'article-add.php';
        </script>";
    }
}

// Fungsi untuk mendapatkan nilai ENUM dari database
function getEnumValues($conn, $table, $column) {
    $query = "SHOW COLUMNS FROM $table LIKE '$column'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($result);
    $type = $row['Type'];

    preg_match("/^enum\((.*)\)$/", $type, $matches);
    $enumValues = explode(",", $matches[1]);

    return array_map(function ($value) {
        return trim($value, "'");
    }, $enumValues);
}

// Ambil nilai ENUM untuk dropdown departemen
$departemenValues = getEnumValues($conn, 'blog_ukim', 'departemen');
?>

<body>
    <div class="main-table">
        <form action="" method="post" enctype="multipart/form-data">
            <h3 class="mb-3">Buat Blog Baru
                <a href="article.php" class="btn btn-secondary">Daftar Blog</a>
            </h3>

            <!-- Dropdown Departemen -->
            <div class="mb-3 col-6">
                <label for="departemen" class="form-label">Departemen</label>
                <select name="departemen" id="departemen" class="form-control" required>
                    <option value="">-- Pilih Departemen --</option>
                    <?php foreach ($departemenValues as $value): ?>
                        <option value="<?= htmlspecialchars($value); ?>">
                            <?= htmlspecialchars($value); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <!-- Input Judul -->
            <div class="mb-3">
                <label for="judul" class="form-label">Judul</label>
                <input type="text" class="form-control" id="judul" name="judul" placeholder="Judul ..." required>
            </div>

            <!-- Input Gambar -->
            <div class="mb-3">
                <label for="gambar" class="form-label">Gambar</label>
                <input type="file" class="form-control" id="gambar" name="gambar" required>
            </div>

            <!-- Input Isi -->
            <div class="mb-3">
                <label for="isi" class="form-label">Isi</label>
                <textarea class="form-control" id="isi" name="isi" rows="5" placeholder="Isi blog ..." required></textarea>
            </div>

            <button type="submit" name="tambah" class="btn btn-primary">Tambah</button>
        </form>
    </div>
</body>
</html>
