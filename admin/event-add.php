<?php
include('./layout/header-admin.php');

// Proses tambah event
if (isset($_POST['tambah'])) {
    if (tambah_event($_POST, $_FILES) > 0) {
        echo "<script>
            alert('Event Baru Berhasil Ditambahkan');
            document.location.href = 'event.php';
        </script>";
    } else {
        echo "<script>
            alert('Event Baru Gagal Ditambahkan');
            document.location.href = 'event-add.php';
        </script>";
    }
}
?>
<body>
    <div class="main-table">
        <form action="" method="post" enctype="multipart/form-data">
            <h3 class="mb-3">Buat Event Baru
                <a href="event.php" class="btn btn-secondary">Daftar Event</a>
            </h3>

            <!-- Input Judul -->
            <div class="mb-3">
                <label for="judul" class="form-label">Judul</label>
                <input type="text" class="form-control" id="judul" name="judul" placeholder="Judul ..." required>
            </div>

            <!-- Input Tema -->
            <div class="mb-3">
                <label for="tema" class="form-label">Tema</label>
                <input type="text" class="form-control" id="tema" name="tema" placeholder="Tema ..." required>
            </div>

            <!-- Input Deskripsi -->
            <div class="mb-3">
                <label for="deskripsi" class="form-label">Deskripsi</label>
                <textarea class="form-control" id="deskripsi" name="deskripsi" rows="5" placeholder="Deskripsi ..." required></textarea>
            </div>

            <!-- Input Tanggal -->
            <div class="mb-3">
                <label for="tgl_event" class="form-label">Tanggal</label>
                <input type="date" id="tgl_event" name="tgl_event" required>
            </div>

            <!-- Input Lokasi -->
            <div class="mb-3">
                <label for="lokasi" class="form-label">Lokasi</label>
                <input type="text" class="form-control" id="lokasi" name="lokasi" placeholder="Lokasi ..." required>
            </div>

            <!-- Input Gambar -->
            <div class="mb-3">
                <label for="gambar" class="form-label">Gambar</label>
                <input type="file" class="form-control" id="gambar" name="gambar" required>
            </div>

            <!-- Input Link -->
            <div class="mb-3">
                <label for="link" class="form-label">Link</label>
                <input type="text" class="form-control" id="link" name="link" placeholder="Link ..." required>
            </div>

            <button type="submit" name="tambah" class="btn btn-primary">Tambah</button>
        </form>
    </div>
</body>
</html>
