class Pegawai {
  late int id;
  // berguna untuk menyimpan ID pegawai
  late String nip;
  //untuk menyimpan NIP pegawai.
  late String nama;
  //untuk menyimpan nama pegawai.
  late String tanggal_lahir;
  // untuk menyimpan tanggal lahir pegawai.
  late String nomor_telepon;
  //untuk menyimpan nomor telepon pegawai.
  late String email;
  //untuk menyimpan email pegawai.
  late String password;
  //Properti untuk menyimpan password pegawai.

  Pegawai(Map pegawai) {
    // disebut kelas Pegawai yang menerima sebuah Map bernama "pegawai".
    id = pegawai['id'];
    // id nilai dari kunci 'id' dalam map "pegawai" ke properti "id".
    nip = pegawai['nip'];
    //ini adalah nilai dari kunci 'nip' dalam map "pegawai" ke properti "nip".
    nama = pegawai['nama'];
    // ini adalah nilai dari kunci 'nama' dalam map "pegawai" ke properti "nama".
    tanggal_lahir = pegawai['tanggal_lahir'];
    // ini adaalah nilai dari kunci 'tanggal_lahir' dalam map "pegawai" ke properti "tanggal_lahir".
    nomor_telepon = pegawai['nomor_telepon'];
    // ini adalah nilai dari kunci 'nomor_telepon' dalam map "pegawai" ke properti "nomor_telepon".
    email = pegawai[
        'email']; // ini adalah nilai dari kunci 'email' dalam map "pegawai" ke properti "email".
    password = pegawai[
        'password']; // ini adalah nilai dari kunci 'password' dalam map "pegawai" ke properti "password".
  }
}
