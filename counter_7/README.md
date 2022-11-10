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
