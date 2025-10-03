class Mahasiswa {
  // Properties (atribut)
  String nama;
  String nim;
  String jurusan;
  int angkatan;

  // Constructor
  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.angkatan,
  });

  // Method
  void tampilkanData() {
    print("Nama     : $nama");
    print("NIM      : $nim");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
  }
}

void main() {
  // Membuat object dari class Mahasiswa
  var mhs1 = Mahasiswa(
    nama: "Ilham",
    nim: "1123150008",
    jurusan: "Informatika",
    angkatan: 2022,
  );

  mhs1.tampilkanData();
}
