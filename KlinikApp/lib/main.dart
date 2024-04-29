import 'package:flutter/material.dart';
//flutter/material.dart, yang merupakan pustaka utama untuk mengembangkan aplikasi Flutter dengan desain material.
import '/ui/poli_page.dart';
//poli_page.dart yang berisi implementasi halaman PoliPage.

void main() => runApp(MyApp());
//Fungsi main() digunakan sebagai titik masuk (entry point) dari aplikasi. Di sini, kita memanggil fungsi runApp() untuk menjalankan aplikasi dengan menggunakan widget MyApp sebagai root widget.

class MyApp extends StatelessWidget {
  //Kelas MyApp merupakan turunan dari StatelessWidget, yang berarti aplikasi ini menggunakan pendekatan stateless (tanpa state). Tidak ada state yang dipertahankan di dalam kelas ini.
  @override
  Widget build(BuildContext context) {
    //build() untuk membangun tampilan dari MyApp. Metode ini mengembalikan widget MaterialApp, yang merupakan widget utama yang digunakan untuk mengonfigurasi aplikasi Flutter.
    return MaterialApp(
      //Di dalam MaterialApp, kita mengatur properti title menjadi 'Klinik APP', yang akan ditampilkan pada bilah atas perangkat.
      title: 'Klinik APP',
      debugShowCheckedModeBanner: false,
      //debugShowCheckedModeBanner diatur menjadi false untuk menyembunyikan label "debug"
      home: PoliPage(),
      //home diatur sebagai PoliPage(), yang merupakan halaman utama aplikasi yang ditampilkan saat aplikasi dijalankan.
    );
  }
}
