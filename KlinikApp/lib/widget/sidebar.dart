// Import package flutter/material.dart adalah package yang berisi berbagai komponen dan widget UI untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pasien/pasien_page.dart';
import '../ui/pegawai/pegawai_page.dart';

// Import beranda.dart adalah file yang berisi implementasi halaman Beranda.
import '../ui/beranda.dart';

// Import login.dart adalah file yang berisi implementasi halaman Login.
import '../ui/login.dart';

// Import poli_page.dart adalah file yang berisi implementasi halaman PoliPage.
import '../ui/poli/poli_page.dart';

// Kelas Sidebar merupakan StatelessWidget yang digunakan untuk membuat widget Sidebar.
class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget Drawer digunakan untuk membuat drawer di dalam aplikasi.
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Widget UserAccountsDrawerHeader digunakan untuk menampilkan header drawer dengan informasi akun.
          UserAccountsDrawerHeader(
            accountName: Text("Admin"),
            accountEmail: Text("admin@admin.com"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {
              // Navigator.push digunakan untuk menjalankan perpindahan ke halaman Beranda saat ListTile "Beranda" ditekan.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Beranda()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible),
            title: Text("Poli"),
            onTap: () {
              // Navigator.push digunakan untuk menjalankan perpindahan ke halaman PoliPage saat ListTile "Poli" ditekan.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai"),
            onTap: () {
              // Navigator.push digunakan untuk menjalankan perpindahan ke halaman PegawaiPage saat ListTile "Pegawai" ditekan.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PegawaiPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Pasien"),
            onTap: () {
              // Navigator.push digunakan untuk menjalankan perpindahan ke halaman PasienPage saat ListTile "Pasien" ditekan.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PasienPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Keluar"),
            onTap: () {
              // Navigator.pushAndRemoveUntil digunakan untuk menjalankan perpindahan ke halaman Login dan menghapus semua halaman yang ada di atasnya dari tumpukan saat ListTile "Keluar" ditekan.
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
