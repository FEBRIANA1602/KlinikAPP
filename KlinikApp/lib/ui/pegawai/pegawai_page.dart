import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import '../../model/database.dart'; // Mengimpor file model/database.dart yang berisi definisi database.
import '../../model/pegawai.dart'; // Mengimpor file model/pegawai.dart yang berisi definisi kelas Pegawai.
import 'pegawai_item.dart'; // Mengimpor file pegawai_item.dart yang berisi definisi item pegawai.
import 'pegawai_form.dart'; // Mengimpor file pegawai_form.dart yang berisi definisi form pegawai.

// Deklarasi kelas PegawaiPage
class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

// Deklarasi kelas _PegawaiPageState sebagai state dari PegawaiPage
class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Data Pegawai"), // Menampilkan judul halaman "Data Pegawai" pada AppBar.
        actions: [
          GestureDetector(
            child:
                const Icon(Icons.add), // Menampilkan ikon tambah pada AppBar.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PegawaiForm()), // Navigasi ke halaman PegawaiForm ketika ikon tambah ditekan.
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (Map i in pegawai)
            PegawaiItem(
                pegawai: Pegawai(
                    i)) // Menampilkan daftar item pegawai menggunakan PegawaiItem.
          // GestureDetector(
          //   child: Card(
          //     child: ListTile(title: Text(i['nama'])),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) =>
          //                 PegawaiDetail(pegawai: new Pegawai(i))));
          //   },
          // )
        ],
      ),
    );
  }
}
