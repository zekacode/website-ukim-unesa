<?php
include('koneksi.php');

function tambah_blog($post, $files){
    global $conn;

    // Ambil data dari form
    $departemen = mysqli_real_escape_string($conn, $post['departemen']);
    $judul = mysqli_real_escape_string($conn, $post['judul']);
    $isi = mysqli_real_escape_string($conn, $post['isi']);

    // Proses upload file gambar
    $folder_foto = "../asset/gbr_blog/";
    $nama_file = $files['gambar']['name'];
    $tmp_file = $files['gambar']['tmp_name'];
    $path_db = "./asset/gbr_blog/" . $nama_file; // Path untuk disimpan di database

    // Pindahkan file ke folder tujuan
    if (move_uploaded_file($tmp_file, $folder_foto . $nama_file)) {
        // Jika berhasil upload, simpan data ke database
        $sql = "INSERT INTO blog_ukim (tgl, departemen, judul, gambar, isi) 
                VALUES (CURRENT_TIMESTAMP(), '$departemen', '$judul', '$path_db', '$isi')";
        mysqli_query($conn, $sql);
        return mysqli_affected_rows($conn);
    } else {
        // Jika gagal upload
        return -1;
    }
}

function tambah_karya($post){
    global $conn;

    // Ambil data dari form
    $kategori = mysqli_real_escape_string($conn, $post['kategori']);
    $judul = mysqli_real_escape_string($conn, $post['judul']);
    $isi = mysqli_real_escape_string($conn, $post['isi']);

    // Simpan data ke database
    $sql = "INSERT INTO karya_cipta (kategori, judul, isi, tgl) 
            VALUES ('$kategori', '$judul', '$isi', CURRENT_TIMESTAMP())";
    mysqli_query($conn, $sql);
    
    // Kembalikan hasil query
    return mysqli_affected_rows($conn);
}

function tambah_event($post, $files){
    global $conn;

    // Ambil data dari form
    $judul = mysqli_real_escape_string($conn, $post['judul']);
    $tema = mysqli_real_escape_string($conn, $post['tema']);
    $deskripsi = mysqli_real_escape_string($conn, $post['deskripsi']);
    $tgl_event = mysqli_real_escape_string($conn, $post['tgl_event']);
    $lokasi = mysqli_real_escape_string($conn, $post['lokasi']);
    $link = mysqli_real_escape_string($conn, $post['link']);

    // Proses upload file gambar
    $folder_foto = "../asset/gbr_event/";
    $nama_file = $files['gambar']['name'];
    $tmp_file = $files['gambar']['tmp_name'];
    $path_db = "./asset/gbr_event/" . $nama_file; // Path untuk disimpan di database

    // Pindahkan file ke folder tujuan
    if (move_uploaded_file($tmp_file, $folder_foto . $nama_file)) {
        // Jika berhasil upload, simpan data ke database
        $sql = "INSERT INTO events (judul, tema, deskripsi, tgl_event, lokasi, gambar, link, tgl) 
                VALUES ('$judul', '$tema', '$deskripsi', '$tgl_event', '$lokasi', '$path_db', '$link', CURRENT_TIMESTAMP())";
        mysqli_query($conn, $sql);
        return mysqli_affected_rows($conn);
    } else {
        // Jika gagal upload
        return -1;
    }
}

if (isset($_GET['action']) && $_GET['action'] == 'delete') {
    if (isset($_GET['type']) && isset($_GET['id']) && !empty($_GET['id'])) {
        $id = mysqli_real_escape_string($conn, $_GET['id']);
        $type = $_GET['type'];

        switch ($type) {
            case 'blog':
                delete_blog($id);
                break;
            case 'karya':
                delete_karya($id);
                break;
            case 'event':
                delete_event($id);
                break;
            default:
                echo "<script>alert('Tipe data tidak valid'); window.location='../admin/admin.php';</script>";
                break;
        }
    } else {
        echo "<script>alert('ID atau tipe data tidak valid'); window.location='../admin/admin.php';</script>";
    }
}

function delete_blog($id_blog) {
    global $conn;

    // Escape ID untuk mencegah SQL injection
    $id_blog = mysqli_real_escape_string($conn, $id_blog);

    // Query untuk menghapus data
    $sql = "DELETE FROM blog_ukim WHERE id_blog = '$id_blog'";
    if (mysqli_query($conn, $sql)) {
        // Redirect ke halaman article.php setelah berhasil
        header("Location: ../admin/article.php");
        exit();
    } else {
        // Jika gagal, tampilkan error
        echo "<script>alert('Gagal menghapus blog: " . mysqli_error($conn) . "'); window.location='../admin/article.php';</script>";
    }
}

function delete_karya($id_karya) {
    global $conn;

    // Escape ID untuk mencegah SQL injection
    $id_karya = mysqli_real_escape_string($conn, $id_karya);

    // Query untuk menghapus data
    $sql = "DELETE FROM karya_cipta WHERE id_karya = '$id_karya'";
    if (mysqli_query($conn, $sql)) {
        // Redirect ke halaman karya.php setelah berhasil
        header("Location: ../admin/karya.php");
        exit();
    } else {
        // Jika gagal, tampilkan error
        echo "<script>alert('Gagal menghapus karya: " . mysqli_error($conn) . "'); window.location='../admin/karya.php';</script>";
    }
}

function delete_event($id_event) {
    global $conn;

    // Escape ID untuk mencegah SQL injection
    $id_event = mysqli_real_escape_string($conn, $id_event);

    // Query untuk menghapus data
    $sql = "DELETE FROM events WHERE id_event = '$id_event'";
    if (mysqli_query($conn, $sql)) {
        // Redirect ke halaman event.php setelah berhasil
        header("Location: ../admin/event.php");
        exit();
    } else {
        // Jika gagal, tampilkan error
        echo "<script>alert('Gagal menghapus event: " . mysqli_error($conn) . "'); window.location='../admin/event.php';</script>";
    }
}

// Cek apakah form login sudah disubmit
if (isset($_POST['login'])) {
    // Ambil data username dan password dari form
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // Query untuk memeriksa kecocokan username dan password
    $sql = "SELECT * FROM akun WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($conn, $sql);

    // Jika ditemukan data yang cocok
    if (mysqli_num_rows($result) == 1) {
        // Set session untuk menandai bahwa pengguna telah login
        session_start();
        $_SESSION['username'] = $username;

        // Redirect ke halaman admin setelah login berhasil
        header("Location: ./admin/admin.php");
        exit();
    } else {
        // Jika login gagal
        echo "<script>alert('Username atau password salah!'); window.location='login.php';</script>";
    }
}

?>
