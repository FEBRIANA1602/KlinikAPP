import 'package:flutter/material.dart';
//mengimpor paket Flutter 
class Beranda extends StatelessWidget {
  //mendefinisikan sebuah kelas bernama Beranda
  const Beranda({super.key});
  //mendefinisikan sebuah kelas bernama Beranda
  @override
  Widget build(BuildContext context) {
    //mendefinisikan sebuah kelas bernama Beranda
    return Scaffold(
      //mengembalikan sebuah widget Scaffold
      appBar: AppBar(
        //mengembalikan sebuah widget Scaffold
        title: const Text("Beranda"),
        //"Beranda" sebagai judul AppBar
      ),
      body: const Center(
        //mendefinisikan konten utama dari halaman
        child: Text("Selamat Datang"),
      ),//menambahkan sebuah teks "Selamat Datang" sebagai anak dari widget Center.
    );
  }
}
