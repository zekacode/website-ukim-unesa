<?php
include('./layout/header-admin.php');

// Jika id_event tidak ada di URL, redirect ke halaman daftar event (event.php)
if (!isset($_GET['id'])) {
    header("Location: event.php");
    exit;
}

$id_event = mysqli_real_escape_string($conn, $_GET['id']);

// Mengambil data event dari database berdasarkan id
$sql = "SELECT * FROM events WHERE id_event = '$id_event'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

if (!$row) {
    echo "Event tidak ditemukan.";
    exit;
}

// Proses update data jika form disubmit
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $judul = mysqli_real_escape_string($conn, $_POST['judul']);
    $tema = mysqli_real_escape_string($conn, $_POST['tema']);
    $deskripsi = mysqli_real_escape_string($conn, $_POST['deskripsi']);
    $tgl_event = mysqli_real_escape_string($conn, $_POST['tgl_event']);
    $lokasi = mysqli_real_escape_string($conn, $_POST['lokasi']);
    $link = mysqli_real_escape_string($conn, $_POST['link']);
    
    // Cek jika ada gambar yang diupload
    $gambar = $row['gambar']; // Default gambar (jika tidak diubah)
    if (!empty($_FILES['gambar']['name'])) {
        $nama_file = basename($_FILES['gambar']['name']);
        $tmp_file = $_FILES['gambar']['tmp_name'];
        $path_db = "./asset/gbr_event/" . $nama_file;

        // Pindahkan file gambar baru
        if (move_uploaded_file($tmp_file, "../asset/gbr_event/" . $nama_file)) {
            $gambar = $path_db; // Update gambar jika ada yang baru
        } else {
            echo "<script>alert('Gagal mengunggah gambar.');</script>";
        }
    }
    
    // Update data event
    $sql_update = "UPDATE events SET 
        judul='$judul', 
        tema='$tema', 
        deskripsi='$deskripsi', 
        tgl_event='$tgl_event', 
        lokasi='$lokasi', 
        gambar='$gambar', 
        link='$link' 
        WHERE id_event='$id_event'";

    if (mysqli_query($conn, $sql_update)) {
        echo "<script>
            alert('Event berhasil diperbarui');
            document.location.href = 'event.php';
        </script>";
    } else {
        echo "Gagal mengupdate data.";
    }
}
?>
<body>
    <div class="main-table">
        <h3 class="mb-3">Edit Event</h3>
        <form method="POST" enctype="multipart/form-data">
            <!-- Input Judul -->
            <div class="mb-3">
                <label for="judul" class="form-label">Judul</label>
                <input type="text" class="form-control" id="judul" name="judul" value="<?= htmlspecialchars($row['judul']); ?>" required>
            </div>

            <!-- Input Tema -->
            <div class="mb-3">
                <label for="tema" class="form-label">Tema</label>
                <input type="text" class="form-control" id="tema" name="tema" value="<?= htmlspecialchars($row['tema']); ?>" required>
            </div>

            <!-- Input Deskripsi -->
            <div class="mb-3">
                <label for="deskripsi" class="form-label">Deskripsi</label>
                <textarea class="form-control" id="deskripsi" name="deskripsi" rows="5" required><?= htmlspecialchars($row['deskripsi']); ?></textarea>
            </div>

            <!-- Input Tanggal -->
            <div class="mb-3">
                <label for="tgl_event" class="form-label">Tanggal</label>
                <input type="date" id="tgl_event" name="tgl_event" value="<?= htmlspecialchars($row['tgl_event']); ?>" required>
            </div>

            <!-- Input Lokasi -->
            <div class="mb-3">
                <label for="lokasi" class="form-label">Lokasi</label>
                <input type="text" class="form-control" id="lokasi" name="lokasi" value="<?= htmlspecialchars($row['lokasi']); ?>" required>
            </div>

            <!-- Input Gambar -->
            <div class="mb-3">
                <label for="gambar" class="form-label">Gambar</label>
                <input type="file" class="form-control" id="gambar" name="gambar">
            </div>

            <!-- Input Link -->
            <div class="mb-3">
                <label for="link" class="form-label">Link</label>
                <input type="text" class="form-control" id="link" name="link" value="<?= htmlspecialchars($row['link']); ?>" required>
            </div>

            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div>
</body>
</html>
