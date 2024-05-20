import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import '../../model/pegawai.dart'; // Mengimpor file model/pegawai.dart yang berisi definisi kelas Pegawai.
import 'pegawai_detail.dart'; // Mengimpor file pegawai_detail.dart yang berisi definisi halaman detail pegawai.

// Deklarasi kelas PegawaiItem
class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai; // Mendeklarasikan variabel pegawai dengan tipe Pegawai
  const PegawaiItem(
      {super.key,
      required this.pegawai}); // Konstruktor PegawaiItem dengan parameter pegawai

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(
              "${pegawai.nama}"), // Menampilkan nama pegawai di dalam ListTile.
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PegawaiDetail(
                  pegawai:
                      pegawai)), // Navigasi ke halaman PegawaiDetail dengan membawa data pegawai yang dipilih.
        );
      },
    );
  }
}
