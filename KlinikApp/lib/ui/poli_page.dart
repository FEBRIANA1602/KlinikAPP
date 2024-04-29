import 'package:flutter/material.dart';
//flutter/material.dart, yang merupakan pustaka utama untuk mengembangkan aplikasi Flutter dengan desain material.

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);
//kelas PoliPage, yang merupakan turunan dari StatefulWidget. Kelas ini digunakan untuk membuat widget yang dapat berubah-ubah (stateful).
//const PoliPage didefinisikan di sini dengan menggunakan parameter key yang diberi nilai default super.key. Ini berarti kita dapat menginisialisasi PoliPage dengan atau tanpa memberikan kunci.
  @override
  _PoliPageState createState() => _PoliPageState();
}

//Override metode createState() dari kelas StatefulWidget untuk membuat instance dari _PoliPageState, yang merupakan kelas turunan dari State<PoliPage>. Kelas ini bertanggung jawab untuk mempertahankan dan memperbarui state dari PoliPage.
class _PoliPageState extends State<PoliPage> {
//class _PoliPageState didefinisikan di sini. Ini adalah kelas yang akan mengimplementasikan logika dan tampilan dari PoliPage.
  @override
  Widget build(BuildContext context) {
    //Override metode build() untuk membangun tampilan dari PoliPage. Metode ini mengembalikan widget Scaffold, yang merupakan kerangka dasar untuk tampilan aplikasi Flutter. Scaffold memiliki properti appBar untuk menampilkan bilah atas (app bar), dan properti body untuk menampilkan konten utama.
    return Scaffold(
      //Di dalam Scaffold, kita menggunakan widget ListView untuk membuat daftar kartu (cards) dengan scroll view. Ini memungkinkan pengguna untuk menggulir melalui daftar poli.
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        //ListView, kita memiliki empat Card, masing-masing berisi widget ListTile. ListTile adalah komponen yang digunakan untuk menampilkan teks atau elemen lain dengan gaya yang konsisten dalam daftar. Setiap ListTile memiliki properti title yang berisi teks untuk nama poli.
        children: [
          widget(
            children: const [
              widget(
                child: Card(
                  child: ListTile(
                    title: Text("Poli Anak"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Poli Kandungan"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Poli Gigi"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Poli THT"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
