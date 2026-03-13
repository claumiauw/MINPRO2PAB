# MINPRO2PAB

NAMA:  MARIA CLAUDIA MEO

NIM:   2409116108

KELAS: C SISTEM INFORMASI

# Deskripsi Aplikasi
Aplikasi Manajemen Pesanan Catering merupakan aplikasi mobile yang dibuat menggunakan framework Flutter dengan integrasi Supabase sebagai backend database dan sistem autentikasi. aplikasi ini dirancang untuk membantu pengguna dalam mengelola data pesanan catering secara digital, sehingga proses pencatatan pesanan menjadi lebih mudah, cepat, dan terorganisir dibandingkan pencatatan manual. melalui aplikasi ini, pengguna dapat melakukan registrasi akun, login, menambahkan pesanan, melihat daftar pesanan, mengubah data pesanan, serta menghapus pesanan. Semua data pesanan akan tersimpan secara online di database Supabase sehingga data dapat dikelola secara efisien. selain itu, aplikasi juga dilengkapi dengan fitur Light Mode dan Dark Mode yang dapat meningkatkan kenyamanan pengguna saat menggunakan aplikasi. aplikasi ini dikembangkan sebagai bagian dari Mini Project Flutter dengan tujuan mengimplementasikan konsep CRUD (Create, Read, Update, Delete), autentikasi pengguna, dan integrasi database berbasis cloud.

# Fitur Aplikasi

1. Login
Pengguna dapat masuk ke dalam aplikasi menggunakan email dan password yang telah didaftarkan sebelumnya melalui sistem autentikasi Supabase.

2. Register
Pengguna baru dapat membuat akun dengan memasukkan email dan password untuk dapat mengakses aplikasi.

3. Menampilkan Data Pesanan
Aplikasi dapat menampilkan daftar pesanan catering yang tersimpan di database Supabase dalam bentuk list.

4. Menambahkan Pesanan
Pengguna dapat menambahkan data pesanan baru dengan mengisi form yang berisi:

- Nama pemesan

- Menu pesanan

- Jumlah pesanan

- Harga pesanan

5. Mengedit Pesanan
Pengguna dapat mengubah data pesanan yang sudah ada jika terjadi kesalahan atau perubahan informasi.

6. Menghapus Pesanan
Pengguna dapat menghapus data pesanan dari database Supabase.

7. Dark Mode dan Light Mode
Aplikasi menyediakan fitur pergantian tema tampilan antara mode terang (light mode) dan mode gelap (dark mode) untuk meningkatkan kenyamanan pengguna.

8. Integrasi Supabase
Semua data pesanan disimpan dan dikelola menggunakan Supabase Database serta menggunakan Supabase Authentication untuk sistem login dan register.


# Widget yang Digunakan

1. MaterialApp
Digunakan sebagai root widget untuk mengatur tema aplikasi, navigasi, dan tampilan dasar aplikasi.

2. Scaffold
Digunakan sebagai struktur utama halaman yang berisi AppBar, body, dan FloatingActionButton.

3. AppBar
Digunakan untuk menampilkan judul halaman serta tombol aksi seperti tombol dark mode.

4. TextField
Digunakan untuk menerima input dari pengguna seperti email, password, nama pemesan, menu pesanan, jumlah, dan harga.

5. ElevatedButton
Digunakan sebagai tombol aksi untuk menjalankan fungsi seperti login, register, dan menyimpan data pesanan.

6. TextButton
Digunakan sebagai tombol navigasi ke halaman register.

7. ListView.builder
Digunakan untuk menampilkan daftar pesanan secara dinamis dari data yang diambil dari database Supabase.

8. ListTile
Digunakan untuk menampilkan setiap item data pesanan dalam daftar.

9. IconButton
Digunakan untuk tombol edit, delete, dan toggle dark mode.

10. FloatingActionButton
Digunakan sebagai tombol untuk menambahkan pesanan baru.

11. Navigator
Digunakan untuk berpindah antar halaman seperti dari halaman login ke halaman daftar pesanan atau ke halaman form pesanan.

12. Padding
Digunakan untuk memberikan jarak pada komponen agar tampilan lebih rapi.
13. Column
Digunakan untuk menyusun widget secara vertikal pada halaman form dan login.

# dokumentasi

 
