// Mengimport package 'flutter/material.dart' yang berisi komponen UI Flutter.
// Package ini digunakan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.

import 'package:flutter/material.dart';

// Kelas PoliForm adalah StatefulWidget yang digunakan untuk menampilkan formulir poli.

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
// Konstruktor PoliForm.

  @override
  _PoliFormState createState() => _PoliFormState();
// Metode createState() digunakan untuk membuat instance dari _PoliFormState,
// yaitu state yang akan digunakan oleh PoliForm.
}

// Kelas _PoliFormState adalah state dari PoliForm.

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
// GlobalKey<FormState> digunakan untuk mengakses objek FormState yang terkait dengan Form.

  @override
  Widget build(BuildContext context) {
// Metode build() akan dijalankan ketika _PoliFormState dirender.

    return Scaffold(
      // Scaffold adalah kelas yang menyediakan kerangka dasar untuk sebuah halaman dalam aplikasi Flutter.

      appBar: AppBar(title: const Text("Tambah Poli")),
      // Properti appBar digunakan untuk menampilkan AppBar di bagian atas halaman dengan judul "Tambah Poli".

      body: SingleChildScrollView(
        // Widget SingleChildScrollView digunakan untuk mengatur tata letak dengan satu widget tunggal yang dapat digulirkan.

        child: Form(
          // Widget Form digunakan untuk membuat formulir.

          key: _formKey,
          // Properti key digunakan untuk menghubungkan GlobalKey dengan Form untuk mengakses FormState.

          child: Column(
            // Widget Column digunakan untuk mengatur tata letak dalam bentuk kolom.

            children: [
              TextField(
                // Widget TextField digunakan untuk menerima input teks dari pengguna.

                decoration: const InputDecoration(labelText: "Nama Poli"),
                // Properti decoration digunakan untuk mengatur tampilan label TextField.
              ),
              SizedBox(height: 20),
              // Widget SizedBox digunakan untuk membuat ruang kosong dengan tinggi tertentu di antara widget.

              ElevatedButton(
                // Widget ElevatedButton digunakan untuk membuat tombol dengan tampilan yang ditinggikan.

                onPressed: () {},
                // Properti onPressed digunakan untuk menentukan aksi yang akan dilakukan ketika tombol ditekan.
                // Pada contoh ini, aksi belum ditentukan.

                child: const Text("Simpan"),
                // Properti child digunakan untuk menampilkan teks pada tombol.
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Kelas PoliForm ini digunakan untuk menampilkan formulir tambah poli.
// Formulir tersebut berisi TextField untuk memasukkan nama poli dan tombol Simpan.