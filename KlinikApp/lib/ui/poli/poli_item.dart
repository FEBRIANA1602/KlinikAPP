// Mengimport package 'flutter/material.dart' yang berisi komponen UI Flutter.
// Package ini digunakan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.

import 'package:flutter/material.dart';

// Mengimport model Poli dari file 'poli.dart'.
// Model Poli digunakan untuk mendapatkan informasi tentang poli.

import '../../model/poli.dart';

// Mengimport PoliDetail dari file 'poli_detail.dart'.
// Halaman PoliDetail digunakan untuk menampilkan detail poli.

import 'poli_detail.dart';

// Kelas PoliItem adalah StatelessWidget yang digunakan untuk menampilkan item poli.

class PoliItem extends StatelessWidget {
  final Poli poli; // Properti poli dengan tipe data Poli yang wajib (required).

  const PoliItem({Key? key, required this.poli}) : super(key: key);
// Konstruktor PoliItem menerima argumen poli yang merupakan sebuah objek Poli.
// Properti poli bersifat wajib (required) karena diberi kata kunci required pada konstruktor.

  @override
  Widget build(BuildContext context) {
// Metode build() akan dijalankan ketika PoliItem dirender.

    return GestureDetector(
      // Widget GestureDetector digunakan untuk mendeteksi ketukan (tap) pada widget yang ada di dalamnya.

      child: Card(
        // Widget Card digunakan untuk membuat kotak berlapis yang berisi widget lain di dalamnya.

        child: ListTile(
          // Widget ListTile digunakan untuk menampilkan item dalam daftar dengan judul dan konten.

          title: Text("${poli.namaPoli}"),
          // Properti title digunakan untuk menampilkan teks sebagai judul item.
          // Pada contoh ini, menampilkan nama poli yang diperoleh dari properti poli.
        ),
      ),

      onTap: () {
        // Properti onTap digunakan untuk menentukan aksi yang akan dilakukan ketika widget di dalam GestureDetector ditekan.

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliDetail(poli: poli),
          ),
        );
        // Menavigasi ke halaman PoliDetail dengan mengirimkan objek poli sebagai argumen poli.
      },
    );
  }
}

// Kelas PoliItem ini digunakan untuk menampilkan item poli dalam bentuk ListTile.
// Setiap item poli dapat diklik untuk menampilkan halaman detail poli menggunakan PoliDetail.