<?php
include('./layout/header-admin.php');
?>
<body>
    <div class="main-table">
        <h3 class="mb-3">Semua Blog
            <a href="article-add.php" class="btn btn-success">Tambah</a>
        </h3>
        <table class="data-table">
            <thead>
                <tr>
                    <th>ID Blog</th>
                    <th>Tanggal</th>
                    <th>Departemen</th>
                    <th>Judul</th>
                    <th>Gambar</th>
                    <th>Isi</th>
                    <th>Aksi</th> <!-- Kolom aksi untuk edit dan delete -->
                </tr>
            </thead>
            <tbody>
                <?php
                // Mengambil data blog dari database
                $sql = "SELECT id_blog, tgl, departemen, judul, gambar, isi FROM blog_ukim";
                $result = mysqli_query($conn, $sql);

                // Menampilkan data blog dalam tabel
                while ($row = mysqli_fetch_array($result)) {
                ?>
                    <tr>
                        <td><?= htmlspecialchars($row['id_blog']); ?></td>
                        <td><?= htmlspecialchars($row['tgl']); ?></td>
                        <td><?= htmlspecialchars($row['departemen']); ?></td>
                        <td><?= htmlspecialchars($row['judul']); ?></td>
                        <td>
                            <img src="../<?= htmlspecialchars($row['gambar']); ?>" alt="Gambar" width="100">
                        </td>
                        <td>
                            <?php
                            // Memotong isi blog hingga 10 kata pertama
                            $words = explode(" ", $row['isi']);
                            $limited_text = implode(" ", array_slice($words, 0, 10));
                            echo htmlspecialchars($limited_text) . (count($words) > 10 ? "..." : "");
                            ?>
                        </td>
                        <td>
                            <a href="article-edit.php?id=<?= htmlspecialchars($row['id_blog']); ?>" class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </a>
                            <a href="../conn/controller.php?action=delete&type=blog&id=<?= htmlspecialchars($row['id_blog']); ?>"
                               class="delete-btn"
                               onclick="return confirm('Apakah Anda yakin ingin menghapus blog ini?')">
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
