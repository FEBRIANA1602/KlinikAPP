import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import 'package:klinik_app/model/pasien.dart'; // Mengimpor file pasien.dart yang berisi definisi kelas Pasien.
import 'pasien_detail.dart'; // Mengimpor file pasien_detail.dart yang berisi definisi kelas PasienDetail.

class PasienItem extends StatelessWidget {
  final Pasien
      pasien; // Mendefinisikan properti pasien sebagai objek dari kelas Pasien.
  const PasienItem({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(
              "${pasien.nama}"), // Menampilkan nilai dari properti pasien dengan nama.
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(
                    pasien:
                        pasien))); // Mengarahkan ke halaman PasienDetail ketika item PasienItem di-tap.
      },
    );
  }
}
