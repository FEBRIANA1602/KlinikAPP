import 'package:flutter/material.dart';
import '../model/poli.dart';
//mengimpor dua paket yang diperlukan, yaitu flutter/material.dart yang berisi widget dan komponen UI dari Flutter, serta ../model/poli.dart yang merupakan file model poli yang akan digunakan dalam kelas ini.

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({Key? key, required this.poli}) : super(key: key);

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}
//Kode ini mendefinisikan kelas PoliDetail sebagai StatefulWidget. StatefulWidget adalah widget yang dapat berubah (mutable) dan memiliki state yang terkait. Kelas ini memiliki satu properti poli yang merupakan objek dari kelas Poli yang akan digunakan untuk menampilkan detail poli. Konstruktor kelas ini mengambil argumen key (opsional) dan poli yang wajib. Metode createState() mengembalikan instance dari kelas _PoliDetailState, yang akan digunakan untuk mengelola state kelas PoliDetail

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Poli"),
      ),
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text("Hapus"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//mendefinisikan kelas _PoliDetailState, yang merupakan state dari kelas PoliDetail.
//uild(), kita mengembalikan sebuah widget Scaffold, yang merupakan kerangka untuk tata letak aplikasi.
//Scaffold memiliki properti appBar yang berisi sebuah AppBar dengan judul "Detail Poli". Properti body dari Scaffold adalah sebuah Column yang berisi beberapa widget lainnya.
//Di dalam Column, terdapat widget SizedBox dengan tinggi 20 untuk memberikan jarak.
//ada widget Text yang menampilkan teks "Nama Poli: {namaPoli}" dari objek widget.poli yang diterima dari kelas PoliDetail. Terdapat juga widget SizedBox lagi untuk memberikan jarak.
//widget Row yang menampilkan dua tombol ElevatedButton berdampingan
