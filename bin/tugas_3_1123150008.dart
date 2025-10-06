class Mahasiswa {
  // Properti
  String namaLengkap;
  String nomorInduk;
  String prodi;
  int tahunMasuk;

  // Constructor
  Mahasiswa({
    required this.namaLengkap,
    required this.nomorInduk,
    required this.prodi,
    required this.tahunMasuk,
  });

  // Method
  void tampilkanData() {
    print("Nama     : $namaLengkap");
    print("NIM      : $nomorInduk");
    print("Jurusan  : $prodi");
    print("Angkatan : $tahunMasuk");
  }
}

class AsistenDosen extends Mahasiswa {
  String mkBimbingan;

  AsistenDosen({
    required String namaLengkap,
    required String nomorInduk,
    required String prodi,
    required int tahunMasuk,
    required this.mkBimbingan,
  }) : super(
          namaLengkap: namaLengkap,
          nomorInduk: nomorInduk,
          prodi: prodi,
          tahunMasuk: tahunMasuk,
        );

  // Override method
  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Asisten MK: $mkBimbingan");
  }
}

// Interface (abstract class)
abstract class Pendaftaran {
  void ambilMatkul(String namaMatkul);
}

class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  List<String> daftarMatkul = [];

  MahasiswaAktif({
    required String namaLengkap,
    required String nomorInduk,
    required String prodi,
    required int tahunMasuk,
  }) : super(
          namaLengkap: namaLengkap,
          nomorInduk: nomorInduk,
          prodi: prodi,
          tahunMasuk: tahunMasuk,
        );

  @override
  void ambilMatkul(String namaMatkul) {
    daftarMatkul.add(namaMatkul);
    print("$namaLengkap berhasil ambil mata kuliah $namaMatkul");
  }
}

void main() {
  // Object mahasiswa umum
  var mahasiswa1 = Mahasiswa(
    namaLengkap: "Dwi",
    nomorInduk: "1123150008",
    prodi: "Informatika",
    tahunMasuk: 2022,
  );
  mahasiswa1.tampilkanData();

  print("----------");

  // Object asisten dosen
  var asdos1 = AsistenDosen(
    namaLengkap: "Ilham",
    nomorInduk: "1123150009",
    prodi: "Sistem Informasi",
    tahunMasuk: 2023,
    mkBimbingan: "Pemrograman Mobile",
  );
  asdos1.tampilkanData();

  print("----------");

  // Mahasiswa aktif implementasi interface
  var mahasiswa2 = MahasiswaAktif(
    namaLengkap: "Maulana",
    nomorInduk: "1123150010",
    prodi: "Teknik Elektro",
    tahunMasuk: 2024,
  );
  mahasiswa2.ambilMatkul("Algoritma");
  mahasiswa2.ambilMatkul("Basis Data");
  mahasiswa2.tampilkanData();
  print("Matkul yang diambil: ${mahasiswa2.daftarMatkul}");
}
