import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import 'package:klinik_app/model/pasien.dart'; // Mengimpor file pasien.dart yang berisi definisi kelas Pasien.

class PasienDetail extends StatefulWidget {
  final Pasien
      pasien; // Mendefinisikan properti pasien sebagai objek dari kelas Pasien.

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
                "Detail Pasien")), // Menampilkan judul "Detail Pasien" pada AppBar.
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          textAlign: TextAlign.left,
                          'Nama'), // Menampilkan teks "Nama".
                      Text(
                          textAlign: TextAlign.left,
                          'No Rekam Medis'), // Menampilkan teks "No Rekam Medis".
                      Text(
                          textAlign: TextAlign.left,
                          'Tanggal Lahir'), // Menampilkan teks "Tanggal Lahir".
                      Text(
                          textAlign: TextAlign.left,
                          'Nomor Telepon'), // Menampilkan teks "Nomor Telepon".
                      Text(
                          textAlign: TextAlign.left,
                          'Alamat') // Menampilkan teks "Alamat".
                    ]),
                Column(children: const [
                  Text(' : '), // Menampilkan tanda ":".
                  Text(' : '), // Menampilkan tanda ":".
                  Text(' : '), // Menampilkan tanda ":".
                  Text(' : '), // Menampilkan tanda ":".
                  Text(' : ') // Menampilkan tanda ":".
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "${widget.pasien.nama}"), // Menampilkan nilai dari properti nama pada objek pasien.
                    Text(
                        "${widget.pasien.noRm}"), // Menampilkan nilai dari properti noRm pada objek pasien.
                    Text(
                        "${widget.pasien.tgllahir}"), // Menampilkan nilai dari properti tgllahir pada objek pasien.
                    Text(
                        "${widget.pasien.nmrtlp}"), // Menampilkan nilai dari properti nmrtlp pada objek pasien.
                    Text(
                        "${widget.pasien.alamat}"), // Menampilkan nilai dari properti alamat pada objek pasien.
                  ],
                )
              ],
            ),

            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nomor Rekam Medis: ${widget.pasien.noRm}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),

            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed:
                        () {}, // Tindakan yang diambil saat tombol "Ubah" ditekan.
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .green), // Mengatur latar belakang tombol menjadi hijau.
                    child: const Text(
                        "Ubah")), // Menampilkan teks "Ubah" pada tombol.
                ElevatedButton(
                    onPressed:
                        () {}, // Tindakan yang diambil saat tombol "Hapus" ditekan.
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .red), // Mengatur latar belakang tombol menjadi merah.
                    child: const Text(
                        "Hapus")), // Menampilkan teks "Hapus" pada tombol.
              ],
            )
          ],
        ));
  }
}
