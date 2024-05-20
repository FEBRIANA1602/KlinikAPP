// Mengimport package 'flutter/material.dart' yang berisi komponen UI Flutter.
// Package ini digunakan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.

import 'package:flutter/material.dart';
import 'package:klinik_app/widget/sidebar.dart';

// Mengimport model Poli dari file 'poli.dart'.
// Model Poli digunakan untuk mendapatkan informasi tentang poli.

import '../../model/poli.dart';

// Mengimport PoliDetail dari file 'poli_detail.dart'.
// Halaman PoliDetail digunakan untuk menampilkan detail poli.

import 'poli_detail.dart';

// Mengimport PoliItem dari file 'poli_item.dart'.
// Widget PoliItem digunakan untuk menampilkan item poli dalam bentuk ListTile.

import 'poli_item.dart';

// Mengimport PoliForm dari file 'poli_form.dart'.
// Halaman PoliForm digunakan untuk menampilkan formulir tambah poli.

import 'poli_form.dart';

// Kelas PoliPage adalah StatefulWidget yang digunakan untuk menampilkan daftar poli.

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);
// Konstruktor PoliPage.

  @override
  State<PoliPage> createState() => _PoliPageState();
// Metode createState() digunakan untuk membuat instance dari _PoliPageState,
// yaitu state yang akan digunakan oleh PoliPage.
}

// Kelas _PoliPageState adalah state dari PoliPage.

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
// Metode build() akan dijalankan ketika _PoliPageState dirender.

    return Scaffold(
      // Scaffold adalah kelas yang menyediakan kerangka dasar untuk sebuah halaman dalam aplikasi Flutter.
      drawer: Sidebar(),
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        title: const Text("Data Poli"),
        // Properti title digunakan untuk menampilkan judul "Data Poli" pada AppBar.

        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            // Properti child digunakan untuk menampilkan ikon Add pada AppBar.

            onTap: () {
              // Properti onTap digunakan untuk menentukan aksi yang akan dilakukan ketika ikon Add ditekan.

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
                // Navigator.push digunakan untuk berpindah ke halaman PoliForm ketika ikon Add ditekan.
              );
            },
          )
        ],
      ),
      body: ListView(
        // Widget ListView digunakan untuk mengatur tata letak berbentuk daftar dari widget yang ada di dalamnya.

        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          // Widget PoliItem digunakan untuk menampilkan item Poli dengan nama "Poli Anak".
          // PoliItem akan menampilkan judul item dengan nama poli yang diberikan.

          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          // Widget PoliItem digunakan untuk menampilkan item Poli dengan nama "Poli Kandungan".
          // PoliItem akan menampilkan judul item dengan nama poli yang diberikan.

          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          // Widget PoliItem digunakan untuk menampilkan item Poli dengan nama "Poli Gigi".
          // PoliItem akan menampilkan judul item dengan nama poli yang diberikan.

          PoliItem(poli: Poli(namaPoli: "Poli THT")),
          // Widget PoliItem digunakan untuk menampilkan item Poli dengan nama "Poli THT".
          // PoliItem akan menampilkan judul item dengan nama poli yang diberikan.
        ],
      ),
    );
  }
}

// Kelas PoliPage ini digunakan untuk menampilkan daftar poli dalam bentuk ListView.
// Pada AppBar, terdapat ikon Add yang apabila ditekan akan membuka halaman PoliForm untuk menambahkan poli baru.