import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.

// Deklarasi kelas PegawaiForm
class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key); // Konstruktor PegawaiForm

  @override
  _PegawaiFormState createState() =>
      _PegawaiFormState(); // Membuat state dari PegawaiForm
}

// Deklarasi kelas _PegawaiFormState sebagai state dari PegawaiForm
class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>(); // Membuat GlobalKey untuk Form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pegawai")), // Menampilkan judul halaman "Tambah Pegawai" pada AppBar.
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menghubungkan form dengan GlobalKey
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Nama Pegawai"), // Menampilkan label "Nama Pegawai" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "NIP"), // Menampilkan label "NIP" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Tanggal Lahir"), // Menampilkan label "Tanggal Lahir" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Nomor Telepon"), // Menampilkan label "Nomor Telepon" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Email"), // Menampilkan label "Email" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Password"), // Menampilkan label "Password" pada TextField.
              ),
              SizedBox(height: 20), // Membuat jarak vertikal sebesar 20 piksel.
              ElevatedButton(
                onPressed:
                    () {}, // Menambahkan fungsi yang akan dijalankan ketika tombol ditekan.
                child: const Text(
                    "Simpan"), // Menampilkan teks "Simpan" di dalam tombol.
              )
            ],
          ),
        ),
      ),
    );
  }
}
