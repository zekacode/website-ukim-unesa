<?php
include('./layout/header-admin.php');
?>
<body>
    <div class="main-table">
        <h3 class="mb-3">Semua Event
            <a href="event-add.php" class="btn btn-success">Tambah</a>
        </h3>
        <table class="data-table">
            <thead>
                <tr>
                    <th>ID Event</th>
                    <th>Judul</th>
                    <th>Tema</th>
                    <th>Deskripsi</th>
                    <th>Tanggal</th>
                    <th>Lokasi</th>
                    <th>Gambar</th>
                    <th>Link</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Mengambil data event dari database
                $sql = "SELECT id_event, judul, tema, deskripsi, tgl_event, lokasi, gambar, link FROM events";
                $result = mysqli_query($conn, $sql);

                // Menampilkan data event dalam tabel
                while ($row = mysqli_fetch_array($result)) {
                ?>
                    <tr>
                        <td><?= htmlspecialchars($row['id_event']); ?></td>
                        <td><?= htmlspecialchars($row['judul']); ?></td>
                        <td><?= htmlspecialchars($row['tema']); ?></td>
                        <td>
                            <?php
                            // Memotong deskripsi hingga 10 kata pertama
                            $words = explode(" ", $row['deskripsi']);
                            $limited_text = implode(" ", array_slice($words, 0, 10));
                            echo htmlspecialchars($limited_text) . (count($words) > 10 ? "..." : "");
                            ?>
                        </td>
                        <td><?= htmlspecialchars($row['tgl_event']); ?></td>
                        <td><?= htmlspecialchars($row['lokasi']); ?></td>
                        <td>
                            <img src="../<?= htmlspecialchars($row['gambar']); ?>" alt="Gambar" width="100">
                        </td>
                        <td>
                            <a href="<?= htmlspecialchars($row['link']); ?>" target="_blank"><?= htmlspecialchars($row['link']); ?></a>
                        </td>
                        <td>
                            <a href="event-edit.php?id=<?= htmlspecialchars($row['id_event']); ?>" class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </a>
                            <a href="../conn/controller.php?action=delete&type=event&id=<?= htmlspecialchars($row['id_event']); ?>"
                               class="delete-btn"
                               onclick="return confirm('Apakah Anda yakin ingin menghapus event ini?')">
                                <i class="fas fa-trash"></i> Delete
                            </a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>
