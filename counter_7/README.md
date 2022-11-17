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