Nama    : **Vincent Suhardi** \
NPM     : **2206082505** \
Kelas   : **F**

## Tugas 7
1. Apa perbedaan utama antara _stateless_ dan _stateful_ widget dalam konteks pengembangan aplikasi Flutter? \
_Stateless_ widget bersifat statis yang berarti bahwa widget ini tidak perlu diubah-ubah sepanjang siklus hidup widget tersebut. Contoh-contoh dari _stateless_ widget adalah seperti gambar dan teks yang ditampilkan pada aplikasi. Sedangkan _stateful_ widget bersifat dinamis yang berarti bahwa tampilan widget ini dapat berubah-ubah dari perubahan data atau interaksi oleh pengguna selama siklus hidup dari widget. Contoh dari _stateful_ widget seperti formulir, _text field_, dan _checkbox_. Selain itu, _stateless_ widget lebih efisien daripada _stateful_ widget karena tidak perlu merespons terhadap perubahan internal.

2. Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- **`MyApp` widget** yang berperan sebagai widget paling utama dari aplikasi. widget ini menginisialisasi `MaterialApp` yang merupakan _container_ utama pada aplikasi. Selain itu, widget ini juga memanggil `MyHomePage` yang digunakan untuk membangun tampilan utama pada aplikasi.
- **`MyHomePage` widget** yang berperan sebagai tampilan/halaman utama (_home_) dari aplikasi. widget ini mendefinisikan bagian `AppBar`, bagian aplikasi yang bersifat seperti navigation bar pada aplikasi web, dan juga kerangka dari halaman. widget ini juga menampilkan _list_ object `InventoryItem` untuk ditampilkan juga pada tampilan _grid_ dalam bentuk _cards_.
- **`ItemCard` widget** yang berfungsi untuk membuat bentuk _card_ pada masing-masing _item_ yang pada tampilan _grid_. Warna _card_ diperoleh dari warna, _icon_, dan teks yang terdapat pada `InventoryItem`. Selain itu, widget ini juga membuat _card_ dapat menampilkan _snackbar_ dengan teks yang didasarkan oleh teks `InventoryItem`.
- **`Scaffold` widget** yang merupakan widget yang berada di tingkat tertinggi untuk memberikan struktur bagi seluruh widget lainnya pada halaman _home_.
- **`SingleChildScrollView` widget** yang memberikan fungsi _scrolling_ bila isi dari halaman melewati batas ukuran maksimum tampilan.
- **`InkWell` widget** yang memperlihatkan area yang merespon terhadap gerakan sentuhan dari pengguna. Hal ini membuat tampilan ketika pemencetan terhadap setiap _card_ lebih menarik.
- **`SnackBar` widget** yang menampilkan teks di bawah aplikasi ketika _card_ disentuh oleh pengguna.
- **`Material` widget** yang digunakan untuk membuat struktur utama terhadap _card_ ketika aplikasi dibangun.
- **`Column` widget** yang digunakan untuk memberikan tampilan kolom terhadap _cards_.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).