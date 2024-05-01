import 'package:flutter/material.dart';
// Pada baris ini berarti mengimpor paket flutter/material.dart yang digunakan untuk membangun antarmuka pengguna
import '../model/poli.dart';
// Mengimpor file poli.dart dari direktori model
import 'poli_detail.dart';
// Mengimpor file poli_detail.dart untuk menampilkan detail dari poli
class PoliItem extends StatelessWidget {
//Kelas Poliitem yang berarti tidak dapat berubah setelah dibuat  
  final Poli poli;
  //Variabel poli bertipe Poli untuk menyimpan data poli yang ditampilkan

  const PoliItem({Key? key, required this.poli}) : super(key: key);
  //const Politem digunakan menginisialisasi objek Politem yang memiliki parameter key dari widget indk dan parameter poli yang merupakan aguman wajib. serta required artinya nilai poli saat membuat objek Poliitem
  @override
  Widget build(BuildContext context) {
    //build digunakan untuk membangun tampilan widget poliitem
    return GestureDetector(
      // gesturedetecture mendeteksi gestur pengguna contohnya ketukan atau gesekan
      child: Card(
        child: ListTile(
          title: Text("${poli.namaPoli}"),
        ),
      ),
      //Card merupakan kartu untuk mengelompokan dan mempresentasikan informasi. Dan Listtile berisi judul yang diambil dari namaPoli dari objek poli
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
    );
  }
}
//on Tap akan terpanggil jika kita ketikan item poli. dengan menggunakan navigator.push untuk alih ke hal Polidetail yang menampikan poli yang dipilih.