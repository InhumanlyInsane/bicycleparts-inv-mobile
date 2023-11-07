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
- Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya. \
Sebelum menginisiasi program Flutter baru, saya membuat dan menginisiasi repo GitHub baru yang saya namakan "bicycleparts-inv-mobile". Setelah itu, saya membuat direktori proyek baru pada komputer saya dan mengambil perintah `git init` pada terminal untuk menginisiasi repo lokal. Setelah itu saya melakukan _commit_ pertama terlebih dahulu untuk menyambungkan repo lokal dengan repo pada GitHub. Kemudian, pada direktori proyek saya menggunakan perintah `flutter create main` untuk menginisiasi aplikasi Flutter yang dinamakan dengan `main`. \
\
Pada _path_ `main/lib` saya membuat berkas `.dart` yang saya namakan `menu.dart`. Pada `main.dart`, saya memindahkan beberapa kelas seperti `MyHomePage` agar program `menu.dart` dapat berfokus pada pengerjaan halaman utama (_home page_) pada aplikasi. Setelah itu, saya melakukan konfigurasi terhadap kedua program Dart tersebut agar dapat berubah dari _stateful_ menjadi _stateless_ karena masih belum diperlukan widget _stateful_.

- Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - Melihat daftar item (`Lihat Item`)
    - Menambah item (`Tambah Item`)
    - Logout (`Logout`)

    Pada kelas `MyHomePage` pada `menu.dart`, saya membuat kelas baru yang saya namakan `InventoryItem` untuk membentuk tombol-tombol tersebut. Kelas `InventoryItem` diisikan _fields_ `name` untuk teks dari tombol, `icon` untuk _icon_ dari tombol, dan `color` warna dari tombol.

    Setelah itu, saya juga menambahkan kelas baru bersifat _stateless_ yang dinamakan `ItemCard`. Kelas ini memiliki _class field_ kelas `InventoryItem`. Pada _method_ `build`, dibuat kelas `Material` sebagai dasar dari pembuatan tombol berupa _card_.

    Kembali ke kelas `MyHomePage`, saya menginisiasi _class field_ yang saya namakan `items` yang berupa suatu struktur data `List` yang diisikan object-object `InventoryItem` atau kita dapat juga samakan dengan _item_ tombol-tombol yang akan dibuat. Dalam _method_ `build`, pada widget `SingleChildScrolView`, dibuat suatu `GridView` untuk menata setiap object tombol pada _list_ `items` pada _fields_ dari kelas.

- Memunculkan `SnackBar` dengan tulisan:
    - "Kamu telah menekan tombol Lihat Item" ketika tombol `Lihat Item` ditekan.
    - "Kamu telah menekan tombol Tambah Item" ketika tombol `Tambah Item` ditekan.
    - "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.

    Pada kelas `ItemCard` di dalam berkas `menu.dart`, ketika pembuatan _method_ `build`, _child_ parameter dari object `Material` dibuat sebuah object `InkWell` yang memberikan suatu animasi _ink splash_ ketika tombol ditekan oleh pengguna. Salah satu parameter dari object `InkWell` adalah `onTap` yang mengatur apa yang terjadi bila tombol ditekan. Pada parameter tersebut, dipanggil method dari kelas `ScaffoldMessenger`, yaitu `hideCurrentSnackBar` untuk menyembunyikan `SnackBar` ketika tidak ditekan selama beberapa waktu dan `showSnackBar` untuk menampilkan `SnackBar`. Pada _method_ `showSnackBar`, dibuat object `SnackBar` yang diisikan dengan parameter `content`. Parameter ini merupakan tempat teks apa yang kita ingin tampilkan pada `SnackBar`. Untuk membedakan teks antar tombol, kelas `ItemCard` menginisasi _field_ `InventoryItem` yang dinamakan `item` untuk kemudian diambil nama dari setiap `item` yang akan ditampilkan pada `SnackBar`.