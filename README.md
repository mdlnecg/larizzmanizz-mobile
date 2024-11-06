# Welcome To 🍪 larizzmanizz 🍪!
Nama: Madeline Clairine Gultom\
NPM: 2306207846\
PBP D

<details><summary>TUGAS 7: Elemen Dasar Flutter</summary>

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