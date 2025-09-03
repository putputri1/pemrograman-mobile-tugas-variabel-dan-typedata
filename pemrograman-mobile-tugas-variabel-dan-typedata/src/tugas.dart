import 'dart:io';

void main() {
  stdout.write('Masukkan Nama Karyawan: ');
  String namaKaryawan = stdin.readLineSync()!;

  stdout.write('Masukkan Jumlah Jam Kerja dalam Seminggu: ');
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan Upah per Jam: ');
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write('Apakah Karyawan Tetap? (ya/tidak): ');
  String statusInput = stdin.readLineSync()!.toLowerCase();
  bool isKaryawanTetap = (statusInput == 'ya');

  double gajiKotor = jamKerja * upahPerJam;

  double pajak;
  if (isKaryawanTetap) {
    pajak = gajiKotor * 0.10;
  } else {
    pajak = gajiKotor * 0.05;
  }

  double gajiBersih = gajiKotor - pajak;

  print('\n--- Detail Gaji Karyawan ---');
  print('Nama Karyawan: $namaKaryawan');
  print('Gaji Kotor: Rp ${gajiKotor.toStringAsFixed(2)}');
  print('Pajak: Rp ${pajak.toStringAsFixed(2)}');
  print('Gaji Bersih: Rp ${gajiBersih.toStringAsFixed(2)}');
}