# counter_7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
  - Stateless Widget adalah widget yang tidak mempunyai state, atau artinya widget tersebut tidak memiliki perubahan data secara dinamis, widget properties nya bersifat immutable. Contoh dari stateless widget adalah Icon, IconButton, dan Text.
  - Stateful Widget adalah widget yang mempunyai state, atau artinya widget tersebut dapat berubah berdasarkan nilai state yang ada selama runtime aplication. Widget propertis nya bersifat mutable.

### 2.  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
  - Scaffold -> Scaffold adalah widget yang berfungsi sebagai layout utama dari aplikasi
  - Appbar -> appbar adalah widget yang berfungsi sebagai header dari aplikasi
  - Center -> Center adalah widget yang berfungsi sebagai layout yang mengatur child widget nya ke tengah
  - Row & Column -> row adalah widget yang berisi beberapa widget lainnya secara horizontal, sedangkan column adalah widget yang berisi widget lainnya secara vertikal
  - Text -> text adalah widget yang digunakan untuk menampilkan teks
  - Visibility -> Visibility adalah widget yang digunakan untuk menampilkan widget lainnya jika kondisi tertentu terpenuhi.
   - FloatingActionButton -> FloatingActionButtons adalah widget yang  berfungsi untuk menambahkan tombol yang dapat di klik yang biasanya melayang pada layar aplikasi.
  - Padding -> padding adalah widget yang digunakan untuk memberikan jarak antar widget

### 3. setState()
Fungsi ini berguna untuk mererun build method yang berada dibawahnya, jadi jika ada user action maka fungsi ini sangat berguna untuk mererun tampilan karena ada variabel berubah

### 4. Const and Final
Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi

### 5. Checklist tugas 7
  - membuat appnya dengan flutter create counter_7
  - mengubah title menjadi Program Counter
  - menambahkan void _decrementCounter()
  - Mengedit project tersebut dengan menambahkan widget Padding dan FloatingActionButton agar dapat diletakkan di kiri bawah dan kanan bawah.
  - Menerapkan styling pada hal-hal yang diperlukan seperti tulisan genap dan ganjil
  - Menerapkan ternary operator untuk melakukan filter informasi yang masuk ke dalam flutter application
  - Memanfaatkan widget visibility untuk bonus

# Tugas 8: Elemen Dasar Flutter

### Perbedaan Navigator.push dan Navigator.pushReplacement
`Navigator.push` adalah cara kita untuk menambahkan page yang akan dituju di top of stack navigator. Di lain sisi, `Navigator.pushReplacement` akan menghapus top of stack saat ini (page tempat kita berada), lalu menambahkan page yang dituju di top of stack navigator

## Widget yang dipakai dan fungsinya

-   Container: widget yang berfungsi sebagai _container_ untuk menampung widget lainnya
-   Form: widget yang berfungsi untuk membuat form
-   Column: widget yang berfungsi untuk menampung widget lainnya secara vertikal
-   ListTile: row yang menampung teks sebagai leading dan trailing
-   Drawer: widget yang berfungsi untuk membuat _drawer_ di sisi kiri layar (untuk navigasi)

## Jenis event pada Flutter

-   onTap: event yang terjadi ketika widget di tap
-   onPressed: event yang terjadi ketika widget di tekan
-   onChanged: event yang terjadi ketika widget diubah
-   onSaved: event yang terjadi ketika widget disimpan

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator sebenarnya berjalan dengan menggunakan prinsip stack untuk menyimpan page-page aplikasi yang dikunjungi. Page yang sedang dikunjungi biasanya berada pada top of stack. Apabila kita ingin mennganti halaman/page, maka page yang akan dikunjungi akan di-push pada top of stack. Di lain sisi, jika kita ingin berpindah ke halaman/page sebelumnya maka akan dilakukan operasi pop pada top of stack sehingga page yang saat ini dikunjungi akan dihapus dari top of stack. Karena penghapusan tersebut, top of stack akan berada pada page yang memuat halaman sebelumnya.


### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat widget drawer yang menavigasikan setiap fitur aplikasi agar saling terhubung.
- Membuat kode dart `form.dart` yang berfungsi untuk menampilkan form yang nantinya akan meminta input budget dari user. Jangan lupa untuk menyimpan data `Budget` ke dalam list of `Budget`.
- Membuat kode dart `data.dart` yang berfungsi untuk menampilkan data budget yang telah ditambahkan pada `form.dart`.  

# Tugas 9  Integrasi Web Service pada Flutter

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, kita dapat mengambil data JSON tanpa membuat model terlebih dahulu. Kita dapat membuat dynamic map dari JSON dan mengakses nilainya seperti dictionary dengan python ('data[key]'). Tetapi tidak disarankan karena kita tidak akan tahu apakah ada fields yang hilang atau fields tidak seperti yang kita harapkan, jadi akan sulit untuk mengelolanya dan rawan menimbulkan kesalahan. Meskipun demikian, jelas bahwa itu tidak lebih baik daripada membuat model terlebih dahulu.

### Widget yang diimplementasikan
  -  ListTile: row yang menampung teks sebagai leading dan trailing
  -  Checkbox: widget yang berfungsi untuk membuat checkbox
  -  TextButton: widget yang berfungsi untuk membuat button
  -  FutureBuilder: widget yang berfungsi untuk menampilkan data yang diambil dari API

### Mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter
Data diambil menggunakan HTTP dalam fungsi 'fetchWatchlist' yang memanggil fungsi get dengan instance HTTP. Fungsi mengembalikan daftar objek 'MyWatchlist'. 'FutureBuilder' akan memanggil fungsi dan menunggu responsnya. Ketika data diambil, 'FutureBuilder' mengembalikan 'ListView.builder' yang membangun 'ListTiles' yang berisi data yang dipetakan yang kita dapatkan dari fungsi 'fetchWatchlist'.

### Implementation
1. Buat 'mywatchlist.dart' dan buat kelas 'MyWatchList'.
2. Buat 'fetch_mywatchlist.dart' dan buat fungsi seperti ini untuk mengambil data dari API.
  ```dart
    Future<List<MyWatchList>> fetchWatchlist() async {
    var url = Uri.parse('https://django-tugaspbp2raspati.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object MyWatchlist
    List<MyWatchList> listMyWatchlist = [];
    for (var d in data) {
      if (d != null) {
        listMyWatchlist.add(MyWatchList.fromJson(d));
      }
    }

    return listMyWatchlist;
  }
  ```
3. Buat 'mywatchlistpage.dart' dan buat 'MyWatchListPage StatefulWidget' yang berisi 'FutureBuilder' yang mengambil data menggunakan fungsi 'fetchWatchlist'.
4. Buat 'mywatchlist_detail.dart' dan buat 'MyWatchListDetailPage StatelessWidget' yang menampilkan data yang akan diteruskan dari 'MyWatchListPage'.
5. Teruskan data dari 'MyWatchListPage' ke 'MyWatchListDetailPage' menggunakan 'Navigator.push'.
  ```dart
	Navigator.push(
		context,
		MaterialPageRoute(
		  builder: (context) =>
			  MyWatchListDetailPage(
			movie: snapshot.data![index],
		  ),
		));
  ```
6. Buat widget 'CheckBox' dan fungsi 'onChanged' untuk Bonus.
  ```dart
	Checkbox(
    activeColor: Colors.limeAccent,
    checkColor: Colors.black,
    focusColor: Colors.lightGreenAccent,
    value:
        (snapshot.data![index].fields.watched ==
            Watched.YES),
    onChanged: (bool? value) {
      setState(() {
        (snapshot.data![index].fields.watched ==
                Watched.YES)
            ? snapshot.data![index].fields
                .watched = Watched.NO
            : snapshot.data![index].fields
                .watched = Watched.YES;
      });
    },
  ),
  ```