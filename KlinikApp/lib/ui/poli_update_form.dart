import 'package:flutter/material.dart';
//Mengimpor pustaka material.dart dari Flutter.
import '../model/poli.dart';
//Mengimpor file poli.dart yang mungkin berisi definisi model Poli.
import '../ui/poli_detail.dart';
//Mengimpor file poli_detail.dart yang mungkin berisi halaman detail poli.

class PoliUpdateForm extends StatefulWidget {
//definisi kelas PoliUpdateForm sebagai subkelas dari StatefulWidget.
  final Poli poli;
  //Membuat properti poli yang bertipe Poli ini digunakan untuk menyimpan data poli yang akan diperbarui.

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);
  //konstruktor untuk kelas PoliUpdateForm dengan argumen opsional key dan argumen wajib poli. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super dan menyimpan nilai poli ke dalam properti poli.
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
  //implementasi metode createState() untuk membuat dan mengembalikan objek _PoliUpdateFormState yang akan digunakan oleh widget ini.
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
//definisi kelas _PoliUpdateFormState sebagai subkelas dari State<PoliUpdateForm>. Kelas ini digunakan untuk mengelola status dan membangun tampilan widget untuk PoliUpdateForm.
  final _formKey = GlobalKey<FormState>();
  //buat objek GlobalKey dengan tipe FormState. Kunci ini digunakan untuk mengakses dan memvalidasi form.
  final _namaPoliCtrl = TextEditingController();
  //buat objek TextEditingController untuk mengontrol input teks pada field nama poli.

  @override
  //adanya override pada metode build()digunakan untuk membangun dan mengembalikan widget yang akan ditampilkan.
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  } //implementasi metode initState(), yang akan dipanggil saat widget pertama kali dibuat. Di dalam metode ini, nilai dari field nama poli akan diatur sesuai dengan nilai widget.poli.namaPoli yang diterima dari properti poli.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
    //Membangun tampilan utama halaman menggunakan widget Scaffold, AppBar, SingleChildScrollView, dan Form. Struktur dan tata letaknya mirip dengan kode sebelumnya.
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
    //buat widget TextField sebagai field nama poli untuk menerima input teks dari pengguna.
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: const Text("Simpan Perubahan"));
  }
  //buat tombol simpan yang digunakan untuk menyimpan perubahan pada data poli..
}
