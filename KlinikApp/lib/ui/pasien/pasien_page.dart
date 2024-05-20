import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import 'package:klinik_app/model/database.dart'; // Mengimpor file database.dart yang berisi definisi kelas Database.
import 'package:klinik_app/model/pasien.dart'; // Mengimpor file pasien.dart yang berisi definisi kelas Pasien.
import 'pasien_item.dart'; // Mengimpor file pasien_item.dart yang berisi definisi kelas PasienItem.
import 'pasien_form.dart'; // Mengimpor file pasien_form.dart yang berisi definisi kelas PasienForm.

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Data Pasien"), // Menampilkan teks "Data Pasien" sebagai judul AppBar.
        actions: [
          GestureDetector(
            child:
                const Icon(Icons.add), // Menampilkan ikon tambah pada AppBar.
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienForm())); // Mengarahkan ke halaman PasienForm ketika ikon tambah di-tap.
            },
          )
        ],
        // title: const Text("Data Pasien")
      ),
      body: ListView(
        children: <Widget>[
          for (Map i in pasien) PasienItem(pasien: Pasien(i))
        ], // Membuat daftar widget PasienItem berdasarkan data pasien yang ada dalam bentuk Map.
      ),
    );
  }
}
