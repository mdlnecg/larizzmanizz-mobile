# Welcome To 🍪 larizzmanizz 🍪!
Nama: Madeline Clairine Gultom\
NPM: 2306207846\
PBP D

<details>
<summary>TUGAS 8: Elemen Dasar Flutter</summary>

## TUGAS 8 PBP 2024/2025

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
`const` pada Flutter berfungsi untuk mendeklarasikan objek atau nilai konstan yang bersifat _compile-time constant_, yaitu nilainya sudah ditentukan pada saat kompilasi dan tidak dapat berubah selama runtime. Kegunaan `const` antara lain adalah optimalisasi kerja karena hanya perlu membuatnya satu kali dan objek ini tidak berubah sehingga dapat mengurangi beban pada memori dan CPU. `const` juga digunakan untuk nilai atau objek yang tidak akan berubah (_immutable_), lalu dapat menghemat penggunaan memori juga karena objek yang sama dapat dipanggil berkali-kali. Keuntungan dalam menggunakan `const` adalah mengurangi rekonstruksi UI sehingga aplikasi lebih responsif dan efisien, meningkatkan performa aplikasi karena tidak memerlukan alokasi memori tambahan, dan dapat membuat kode lebih jelas. Penggunaan `const` sangat disarankan pada widget yang tidak berubah, saat mendeklarasikan konstanta (seperti warna, padding, dan lain-lain), dan pada _StatelessWidget_ karena widget bersifat statis. Namun, penggunaan `const` kurang cocok pada objek yang berubah atau bersifat dinamis misalnya pada _StatefulWidget_, juga pada parameter dari fungsi atau variabel yang tidak tetap.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Pada Flutter, Column dan Row adalah dua widget layout dasar yang digunakan untuk mengatur tata letak anak-anak widget (children) dalam arah vertikal dan horizontal.

Column digunakan untuk menempatkan widget secara vertikal (dari atas ke bawah). Berikut contoh implementasinya.
```dart
...
title: const Text('Product berhasil tersimpan'),
content: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Nama: $_name'),
      Text('Deskripsi: $_description'),
      Text('Harga: $_price'),
      Text('Stok: $_amount'),
      Text('Rating: $_rating'),
    ],
  ),
),
...
```
Nama, Deskripsi, Harga, Stok, dan Rating akan tampil berurutan secara vertikal dari atas ke bawah.

Row digunakan untuk menempatkan widget secara horizontal (dari kiri ke kanan). Berikut contoh implementasinya.
```dart
return Scaffold(
  appBar: AppBar(
    ...
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoCard(title: 'NPM', content: npm),
          InfoCard(title: 'Name', content: name),
          InfoCard(title: 'Class', content: className),
        ],
      ),
    ],
    ...
  ),
),
```
NPM, Name, dan Class akan tampil berurutan secara horizontal dari kiri ke kanan.

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Saya menggunakan elemen input `TextFormField` untuk menerima input dari pengguna seperti nama, deskripsi, stok, harga, dan rating produk. Selain itu, terdapat `ElevatedButton` juga yang digunakan untuk (saat ini) menampilkan data form ketika memencet tombol **Save**. Masih terdapat banyak elemen input yang saya belum gunakan, seperti `Checkbox`, `RadioButton`, `Switch`, dan lain-lain.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Saya mengatur konsistensi tema dalam aplikasi dengan menggunakan `ThemeData` pada `MaterialApp`. Pengaturan tema ini untuk menentukan warna primer dan sekunder dari aplikasi yang saya buat. Implementasinya sebagai berikut pada `main.dart`.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'larizzmanizz',
      theme: ThemeData( // Menggunakan ThemeData
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
        ).copyWith(secondary: Colors.brown[600]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Saya menangani navigasi dalam aplikasi ini dengan menggunakan widget yang disediakan oleh Flutter, yaitu `Navigator`. Ketika user ingin menambahkan produk, maka fungsi `Navigator.push()` akan berjalan, yaitu menambah route ke stack route. Lalu, ketika user ingin kembali ke halaman utama, maka fungsi yang berjalan adalah `Navigator.pushReplacement()`, yang akan menggantikan route yang sudah ada pada stack route. Terdapat juga fungsi `Navigator.pop()` yang digunakan untuk menghapus route yang sedang ditampilkan dan kembali pada route yang berada di bawahnya.

</details>


<details>
<summary>TUGAS 7: Elemen Dasar Flutter</summary>

## TUGAS 7 PBP 2024/2025

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Flutter memiliki dua jenis widget utama, yaitu stateless dan stateful widget. Perbedaan dari kedua widget tersebut adalah sebagai berikut.

**Stateless Widget**: Widget yang statis, yaitu widget ini tidak memiliki _state_ yang dapat berubah selama siklus penggunaannya. Sehingga pada saat widget dirender, tampilannya tidak akan berubah. Contohnya adalah label teks, ikon, atau tombol sederhana yang tidak memerlukan perubahan _state_.

**Stateful Widget**: Widget yang dapat berubah ketika user berinteraksi dengan dirinya. Contohnya tombol yang berubah ketika ditekan, perubahan widget tiap hitungan detik, atau form yang membutuhkan input pengguna.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **MaterialApp**: untuk memulai aplikasi Flutter dengan tema dan pengaturan navigasi, juga untuk mengatur tema, judul aplikasi, dan mengatur halaman awal (home) sebagai MyHomePage.
- **Scaffold**: digunakan dalam MyHomePage untuk menampilkan AppBar dan konten di bagian body.
- **AppBar**: untuk menampilkan judul atau elemen interaktif seperti ikon atau tombol.
- **Padding**: untuk memberikan jarak di sekitar widget yang dibungkusnya.
- **Column**: untuk menata widget secara vertikal.
- **Row**: untuk menata widget secara horizontal.
- **Card**: tampilan seperti kartu dengan bayangan dan sudut melengkung. Digunakan dalam widget InfoCard untuk menampilkan informasi NPM, Nama, dan Kelas dengan estetika yang lebih baik.
- **Container**: untuk mengatur tata letak, termasuk menambahkan padding, margin, dan warna latar.
- **Text**: untuk menampilkan teks di layar, seperti judul, nama produk, dan pesan pada tombol yang ditekan.
- **GridView.count**: untuk menampilkan tata letak berbentuk grid dengan jumlah kolom tetap.
- **Material**: menyediakan efek visual seperti shadow, elevation, dan ink splashes.
- **InkWell**: memberi efek ripple saat suatu area disentuh, seperti memicu efek dan menampilkan SnackBar.
- **SnackBar**: untuk menampilkan pesan singkat di bagian bawah layar.
- **Icon**: untuk menampilkan ikon grafis di layar.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` biasa digunakan dalam widget bertipe Stateful untuk memberitahu framework bahwa terdapat perubahan pada data atau variabel state. Ketika `setState()` dipanggil, Flutter akan memicu rebuild pada bagian widget yang terdampak, sehingga perubahan data dapat langsung terlihat pada sisi UI. Fungsi `setState()` bekerja dengan cara mengambil fungsi atau _callback_ sebagai parameter, yang di dalamnya terdapat logika perubahan data yang ingin diperbarui. Saat fungsi ini dipanggil, Flutter akan memanggil ulang metode `build()` pada widget tersebut, membuat UI diperbarui untuk menampilkan data terbaru. Fungsi ini juga memastikan bahwa hanya bagian yang berubah yang akan di-re-render, sehingga aplikasi tetap efisien dan hemat sumber daya.

### 4. Jelaskan perbedaan antara `const` dengan `final`.
`const` dan `final` adalah keyword yang digunakan untuk mendeklarasikan variabel yang tidak akan diubah nilainya setelah diinisialisasi. Namun, terdapat perbedaan antara kedua keyword tersebut. Keyword `const` harus diinisialisasi dengan nilai yang sudah diketahui saat compile time, sehingga nilainya tidak bergantung pada data yang hanya diketahui saat runtime. Sedangkan, untuk `final`, dapat diberikan saat runtime, yaitu saat kode sedang dijalankan, sehingga memungkinkan `final` untuk diinisialisasi dengan nilai yang mungkin hanya tersedia saat aplikasi berjalan.

Contoh penggunaannya adalah sebagai berikut.
```dart
final currentTime = DateTime.now(); // Dapat diinisialisasi dengan nilai yang diketahui saat runtime
const pi = 3.14159; // Nilai yang sudah diketahui saat compile-time
```

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### 1. Membuat flutter project
Dengan menjalankan perintah `flutter create larizzmanizz` di terminal pada direktori yang tepat.

#### 2. Membuat tiga tombol sederhana dengan ikon dan teks
Pada `menu.dart`, terdapat kode berikut untuk mendefinisikan tombol yang akan ditampilkan.
```dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
```

Di mana tiap tombol yang akan ditampilkan adalah sebagai berikut. Kode ini juga sudah mengimplementasi warna-warna yang berbeda pada tiap tombol.
```dart
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shopping_cart, const Color(0xFFFADFA1)),
    ItemHomepage("Tambah Produk", Icons.add, const Color(0xFF7EACB5)),
    ItemHomepage("Logout", Icons.logout, const Color(0xFFC96868)),
];
```

Untuk memunculkan `Snackbar` ketika tombol ditekan.
```dart
class ItemCard extends StatelessWidget {

  ...

  @override
  Widget build(BuildContext context) {
    return Material(
      ...
      
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        ...
        ),
      ),
  }
}
```
</details>