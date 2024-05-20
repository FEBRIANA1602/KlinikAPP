import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);

  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<
      FormState>(); // Membuat kunci form yang digunakan untuk validasi.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pasien")), // Menampilkan teks "Tambah Pasien" sebagai judul AppBar.
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Mengaitkan form dengan kunci yang telah dibuat.
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nama Pasien")), // Menampilkan input teks dengan label "Nama Pasien".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "No Rekam Medis")), // Menampilkan input teks dengan label "No Rekam Medis".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Tanggal Lahir")), // Menampilkan input teks dengan label "Tanggal Lahir".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nomor Telepon")), // Menampilkan input teks dengan label "Nomor Telepon".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Alamat")), // Menampilkan input teks dengan label "Alamat".
              SizedBox(height: 20), // Menambahkan jarak vertikal sebesar 20.
              ElevatedButton(
                  onPressed: () {},
                  child: const Text("Simpan")) // Menampilkan tombol "Simpan".
            ],
          ),
        ),
      ),
    );
  }
}
