import 'package:flutter/material.dart';
// Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.

import '../../model/poli.dart';
// Mengimpor file model/poli.dart yang berisi definisi kelas Poli.

import 'poli_detail.dart';
// Mengimpor file ui/poli_detail.dart yang berisi halaman PoliDetail.

class PoliUpdateForm extends StatefulWidget {
  final Poli poli; // Objek Poli yang akan diupdate.

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola keadaan formulir.
  final _namaPoliCtrl =
      TextEditingController(); // TextEditingController untuk mengendalikan nilai pada input field nama poli.

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli
          .namaPoli; // Mengatur nilai input field nama poli sesuai dengan nilai yang diberikan pada objek Poli.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Ubah Poli")), // Menampilkan judul halaman "Ubah Poli".
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menghubungkan GlobalKey dengan Form.
          child: Column(
            children: [
              _fieldNamaPoli(),
              SizedBox(height: 20),
              _tombolSimpan()
            ], // Menampilkan input field nama poli dan tombol Simpan Perubahan.
          ),
        ),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(
          labelText:
              "Nama Poli"), // Memberikan label pada input field nama poli.
      controller:
          _namaPoliCtrl, // Menghubungkan TextEditingController dengan input field.
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(
              namaPoli: _namaPoliCtrl
                  .text); // Membuat objek Poli baru dengan nilai input field nama poli.
          Navigator.pop(context); // Kembali ke halaman sebelumnya.
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliDetail(
                      poli:
                          poli))); // Menavigasi ke halaman PoliDetail dengan objek Poli yang baru.
        },
        child: const Text(
            "Simpan Perubahan")); // Menampilkan teks pada tombol Simpan Perubahan.
  }
}
