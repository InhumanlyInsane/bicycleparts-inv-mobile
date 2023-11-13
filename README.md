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

## Tugas 8
1. Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat! \
`Navigator.push()` menambahkan suatu _route_ kepada _navigator stack_ dengan meletakkan _route_ tersebut di paling atas sesusi dengan struktur data dari _stack_. Sedangkan `Navigator.pushReplacement()` menggantikan _route_ di paling atas dari _stack_ tersebut dengan _route_ yang baru tanpa mengubah jumlah _route_ pada _stack_. \
\
Penggunaan paling tepat untuk `Navigator.push()` adalah ketika pengguna ingin melihat halaman baru, tetapi tetap menyimpan halaman sebelumnya di belakang layar. Pengguna dapaet kembali kepada halaman sebelumnya dengan memanggil `Navigator.pop()` untuk kembali ke layar sebelumnya. Contohnya seperti penampilan halaman detil produk yang kemudian dapat kembali dari halaman tersebut. Sedangkan penggunaan paling tepat untuk `Navigator.pushReplacement()` adalah ketika pengguna memasuki ke halaman baru tanpa memedulikan halaman seblumnya lagi. Contohnya ketika kita melakukan login, kita dapat menggunakan perintah ini untuk masuk ke halaman utama karena kita tidak akan kembali lagi ke halaman login.

2. Jelaskan masing-masing _layout widget_ pada Flutter dan konteks penggunaannya masing-masing!
- **`Container` widget** adalah widget yang digunakan ketika kita ingin mengelompokkan elemen-elemen lainnya seperti gambar, teks, atau _layout widget_ lainnya ke dalam suatu satu kesatuan yang kemudian dapat kita berikan padding/margin atau dekorator-dekorator lainnya.
- **`Row` dan `Column` widget** adalah widget yang digunakan untuk menampilkan elemen-elemen dalam bentuk baris secara horizontal atau dalam bentuk kolom secara vertikal.
- **`ListView` widget** adalah widget yang digunakan untuk menampilkan kumpulan elemen yang dapat di-_scroll_.
- **`Stack` widget** adalah widget yang dapat membuat kita menumpuk elemen-elemen di atas satu dengan lainnya bagaikan struktur data _stack_.
- **`Card` widget** adalah widget yang digunakan untuk mengelompokkan dan menampilkan kumpulan informasi dalam bentuk kartu.
- **`Expanded` dan `Flexible` widget** adalah widget yang digunakan untuk menentukan bagaimana elemen-elemen terdistribusi pada ruangan yang tersedia seperti panjang kolom atau tinggi baris.
- **`GridView` widget** adalah widget yang digunakan untuk menampilkan elemen dalam bentuk _grid_ seperti suatu tabel dengan baris dan kolom.
- **`Wrap` widget** adalah widget yang digunakan untuk mengatur elemen pada baris. Bila elemen tidak cukup pada suatu baris, maka elemen tersebut akan dipindahkan ke barisan berikutnya.
- **`MediaQuery` widget** adalah widget yang memungkinkan untuk mengakses informasi ukuran layar dari perangkat. Hal ini mampu membuat aplikasi yang lebih responsif terhadap berbagai macam perangkat.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut! \
- **`Form`** yang digunakan untuk mengatur dan memvalidasi input-input nama, jumlah barang, dan deskripsi dari pengguna secara berkelompok.
- **`TextFormField`** yang membuat pengguna dapat melakukan input nama, jumlah, dan deskripsi barang yang ingin ditambahkan melalui sebuah _text field_.

4. Bagaimana penerapan _clean architecture_ pada aplikasi Flutter? \
_Clean architecture_ merupakan suatu cara agar aplikasi Flutter dapat menerapkan _separation of concern_ untuk memelihara dan melakukan _testing_ terhadap aplikasi dengan lebih baik. Pada Flutter, _clean architecture_ dapat dibagi menjadi tiga bagian:
- **Presentation Layer** adalah bagian aplikasi untuk elemen-elemen dan juga widgets pada Flutter. Bagian ini berfokus pada interaksi dengan pengguna dan penampilan UI pada layar.
- **Domain Layer** adalah bagian utama aplikasi yang menyimpan _business logic_ dan model-model domain.
- **Data Layer** adalah bagian aplikasi yang berhubungan dengan mengelola akses data, berinteraksi dengan sumber data eksternal dan memberikan jalan untuk _domain layer_ ke bagian eksternal dari aplikasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara _step-by-step_! 
- Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
    - Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
    - Memiliki sebuah tombol `Save`.
    - Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
        - Setiap elemen input tidak boleh kosong.
        - Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

    Saya membuat program Dart baru yang saya namakan `item_form.dart` yang kemudian diletakkan di dalam path `main/lib/screens`. Saya berawal dengan membuat dua kelas `ItemFormPage` yang digunakan untuk menampilkan halaman formulir dan bersifat _stateful_ dan kemudian kelas `_ItemFormPageState` yang digunakan untuk mengelola state internal dari halamnan formulir. Pada method `build` dalam `_ItemFormPageState`, dibuat widget `Scaffold` yang digunakan untuk membuat kerangka dari form. Di dalam `Scaffold` kemudian dibuat sebuah object `Form` yang mengelola formulir dengan validasi dan juga mengelompokkan tiga elemen input menggunakan `TextFormField`. Untuk pembuatan tombol `Save`, digunakan object `ElevatedButton` sebagai tombol yang digunakan untuk menyimpan data ke dalam formulir ketika ditekan. Validasi dilakukan oleh atribut `key` dari `Form` yang telah diinisialisasi sebagai `GlobalKey<FormState();`.

- Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Tambah Item` pada halaman utama. \
Pada berkas `item_card.dart` yang berfungsi sebagai pengatur dari tampilan dan fungsionalitas dari masing-masing tombol di halaman utama, saya menambahkan suatu _conditional_ ketika tombol ditekan menggunakan `onTap()`. Pada _conditional_ tersebut, bila suatu tombol ditekan dan tombol itu memiliki nama `TambahItem`, maka halaman akan berpindah ke halaman form. Cara pemindahan halaman dilakukan dengan menggunakan `Navigator.push` terhadap kelas `ItemFormPage` yang akan membangun halaman form.

- Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru. \
Pada method `build` di dalam kelas `_ItemFormPageState` pada berkas `item_form.dart`, setelah meletakkan semua _text field_, saya meletakkan sebuah tombol `Save` menggunakan object `ElevatedButton`. Saat tombol ini ditekan menggunakan yang akan direspon oleh atribut `onPressed`, maka _key_ dari form akan melakukan validasi kembali dan jika sudah valid, maka halaman akan menampilkan `pop-up` data menggunakan method `showDialog` yang menampilkan data-data barang yang ingin ditambahkan.

- Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    - Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan `Tambah Item`.
    - Ketika memiih opsi `Halaman Utama`, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    - Ketika memiih opsi `Tambah Item`, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

    Saya membuat program Dart baru yang dinamakan `left_drawer.dart` yang akan menampilkan drawer aplikasi. Di dalam berkas tersebut saya membuat kelas bernama `LeftDrawer` yang bersifat _stateless_. Pada method `build` dari kelas tersebut, saya menggunakan `ListView` untuk mulai membangun drawer. Kemudian, saya menggunakan `DrawerHeader` untuk membuat bagian _header_ dari drawer tersebut dengan memberikan warna indigo, judul yang sesuai dan juga sub-judul dari _header_ tersebut.

    Setelah itu, saya membuat isi dari drawer tersebut menggunakan `ListTile` sebagai salah item pada `ListView` agar drawer tertata lebih rapi. Pada `ListTile` pertama, saya menampilkan `Halaman Utama` dan ketika `ListTile` tersebut ditekan, maka menggunakan `Navigator.pushReplacement()`, halaman akan diarahkan ke kelas `MyHomePage()` yang akan menampilkan halaman utama. `ListTile` berikutnya merupakan drawer item untuk menuju ke form penambahan item. Tidak jauh berbeda dengan cara bekerja `ListTile` pada item `Halaman Utama`, `ListTile` ini tetap menggunakan `Navigator.pushReplacement()` tetapi mengarah kepada kelas `ItemFormPage()` yang berfungsi untuk mengarahkan dan menampilkan pengguna ke halaman form tambah item.