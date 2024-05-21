import 'package:flutter/material.dart';
//mengimport flutter/material.dart
import 'poli_page.dart';
//mengimport poli_page.dart
import 'poli_update_form.dart';
//mengimport poli_update
import '../model/poli.dart';
//mengimport model/poli.dart

class PoliDetail extends StatefulWidget {
//Pada kelas ini terdiri dari PoliDetail sebagai widget dan PoliDetailState sebagai state
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
//Kelas _PoliDetailState berisi logika untuk menampilkan detail poli dan tombol-tombol interaksi.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
              //build method, kelas _PoliDetailState membuat sebuah Scaffold yang berisi AppBar dengan judul "Detail Poli" dan
              //sebuah Column yang berisi jarak vertikal ,teks yang menampilakn poli,
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliUpdateForm(poli: widget.poli),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah"),
    );
  }

  _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin menghapus data ini?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PoliPage()),
                );
              },
              child: const Text("YA"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tidak"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"),
    );
  }
}
//Baris yang berisi dua tombol: "Ubah" dan "Hapus"
//Tombol "Ubah" (_tombolUbah()) akan membuka halaman PoliUpdateForm dan mengirimkan objek Poli yang sedang ditampilkan.
//Tombol "Hapus" (_tombolHapus()) akan menampilkan sebuah dialog konfirmasi. Jika pengguna memilih "Ya", maka aplikasi akan berpindah ke halaman PoliPage (menggunakan Navigator.pushReplacement).
