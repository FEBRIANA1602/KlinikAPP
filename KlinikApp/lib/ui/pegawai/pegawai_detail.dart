import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import 'package:klinik_app/model/pegawai.dart'; // Mengimpor file pegawai.dart yang berisi definisi kelas Pegawai.

class PegawaiDetail extends StatefulWidget {
  final Pegawai
      pegawai; // Mendefinisikan properti pegawai sebagai objek dari kelas Pegawai.

  const PegawaiDetail(
      {super.key,
      required this.pegawai}); // Konstruktor PegawaiDetail dengan menerima parameter objek pegawai.

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
                "Detail Pegawai RS")), // Menampilkan judul halaman "Detail Pegawai RS" pada AppBar.
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
                height: 50), // Menambahkan jarak vertikal sebesar 50.
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          textAlign: TextAlign.left,
                          'Nama'), // Menampilkan teks "Nama" dengan penataan rata kiri.
                      Text(
                          textAlign: TextAlign.left,
                          'NIP'), // Menampilkan teks "NIP" dengan penataan rata kiri.
                      Text(
                          textAlign: TextAlign.left,
                          'Email'), // Menampilkan teks "Email" dengan penataan rata kiri.
                      Text(
                          textAlign: TextAlign.left,
                          'Tanggal Lahir'), // Menampilkan teks "Tanggal Lahir" dengan penataan rata kiri.
                      Text(
                          textAlign: TextAlign.left,
                          'Nomor Telepon') // Menampilkan teks "Nomor Telepon" dengan penataan rata kiri.
                    ]),
                Column(children: const [
                  Text(' : '), // Menampilkan teks ":".
                  Text(' : '), // Menampilkan teks ":".
                  Text(' : '), // Menampilkan teks ":".
                  Text(' : '), // Menampilkan teks ":".
                  Text(' : ') // Menampilkan teks ":".
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "${widget.pegawai.nama}"), // Menampilkan nilai dari properti pegawai dengan nama.
                    Text(
                        "${widget.pegawai.nip}"), // Menampilkan nilai dari properti pegawai dengan nip.
                    Text(
                        "${widget.pegawai.email}"), // Menampilkan nilai dari properti pegawai dengan email.
                    Text(
                        "${widget.pegawai.tgllahir}"), // Menampilkan nilai dari properti pegawai dengan tgllahir.
                    Text(
                        "${widget.pegawai.nmrtlp}") // Menampilkan nilai dari properti pegawai dengan nmrtlp.
                  ],
                )
              ],
            ),
            const SizedBox(
                height: 50), // Menambahkan jarak vertikal sebesar 50.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .green), // Mengatur latar belakang tombol menjadi hijau.
                    child: const Text(
                        "Ubah")), // Menampilkan teks "Ubah" di dalam tombol.
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .red), // Mengatur latar belakang tombol menjadi merah.
                    child: const Text(
                        "Hapus")), // Menampilkan teks "Hapus" di dalam tombol.
              ],
            )
          ],
        ));
  }
}
