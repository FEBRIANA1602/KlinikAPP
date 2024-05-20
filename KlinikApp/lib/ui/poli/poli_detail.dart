// Mengimport package 'flutter/material.dart' yang berisi komponen UI Flutter.
// Package ini digunakan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.

import 'package:flutter/material.dart';

// Mengimport model Poli dari file 'poli.dart'.
// Model Poli digunakan untuk mendapatkan informasi tentang poli.

import '../../model/poli.dart';
// import 'poli_update_form.dart';
// Kelas PoliDetail adalah StatefulWidget yang digunakan untuk menampilkan detail poli.

class PoliDetail extends StatefulWidget {
  final Poli poli; // Properti poli dengan tipe data Poli yang wajib (required).

  const PoliDetail({Key? key, required this.poli}) : super(key: key);
// Konstruktor PoliDetail menerima argumen poli yang merupakan sebuah objek Poli.
// Properti poli bersifat wajib (required) karena diberi kata kunci required pada konstruktor.

  @override
  State<PoliDetail> createState() => _PoliDetailState();
// Metode createState() digunakan untuk membuat instance dari _PoliDetailState,
// yaitu state yang akan digunakan oleh PoliDetail.
}

// Kelas _PoliDetailState adalah state dari PoliDetail.

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
// Metode build() akan dijalankan ketika _PoliDetailState dirender.

    return Scaffold(
      // Scaffold adalah kelas yang menyediakan kerangka dasar untuk sebuah halaman dalam aplikasi Flutter.

      appBar: AppBar(title: Text("Detail Poli")),
      // Properti appBar digunakan untuk menampilkan AppBar di bagian atas halaman dengan judul "Detail Poli".

      body: Column(
        // Widget Column digunakan untuk mengatur tata letak berbentuk kolom dari widget yang ada di dalamnya.

        children: [
          SizedBox(height: 20),
          // SizedBox adalah widget yang digunakan untuk membuat ruang kosong dengan tinggi 20 piksel.

          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            // Widget Text digunakan untuk menampilkan teks.
            // Pada contoh ini, menampilkan teks "Nama Poli : " diikuti dengan nama poli yang diperoleh dari properti poli.

            style: TextStyle(fontSize: 20),
            // Properti style digunakan untuk mengatur gaya teks, dalam hal ini mengatur ukuran font menjadi 20.
          ),

          SizedBox(height: 20),

          Row(
            // Widget Row digunakan untuk mengatur tata letak berbentuk baris dari widget yang ada di dalamnya.

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Properti mainAxisAlignment digunakan untuk mengatur tata letak widget secara horizontal.
            // Pada contoh ini, widget akan diatur agar terdistribusi dengan rata pada ruang yang tersedia.

            children: [
              ElevatedButton(
                onPressed: () {},
                // Properti onPressed digunakan untuk menentukan aksi yang akan dilakukan ketika tombol ditekan.
                // Pada contoh ini, belum ditentukan aksi yang dijalankan.

                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                // Properti style digunakan untuk mengatur gaya tombol.
                // Pada contoh ini, mengatur warna latar belakang tombol menjadi hijau.

                child: const Text("Ubah"),
                // Properti child digunakan untuk menampilkan teks di dalam tombol.
                // Pada contoh ini, menampilkan teks "Ubah" di dalam tombol.
              ),
              ElevatedButton(
                onPressed: () {},
                // Properti onPressed digunakan untuk menentukan aksi yang akan dilakukan ketika tombol ditekan.
                // Pada contoh ini, belum ditentukan aksi yang dijalankan.

                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                // Properti style digunakan untuk mengatur gaya tombol.
                // Pada contoh ini, mengatur warna latar belakang tombol menjadi merah.

                child: const Text("Hapus"),
                // Properti child digunakan untuk menampilkan teks di dalam tombol.
                // Pada contoh ini, menampilkan teks "Hapus" di dalam tombol.
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Kelas PoliDetail ini digunakan untuk menampilkan detail dari sebuah poli.
// Properti poli yang diterima dari konstruktor digunakan untuk mendapatkan informasi tentang poli yang ditampilkan.