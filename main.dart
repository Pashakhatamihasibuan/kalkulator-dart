// * Aplikasi Kalkulator Sederhana Dart

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print("  --------------------------------------- ");
    print(" | \t\t\t\t\t |");
    print(" |          Aplikasi Kalkulator          |");
    print(" | \t\t\t\t\t |");
    print("  --------------------------------------- ");
    print("Selamat Datang di Aplikasi Kalkulator");
    print("© Pasha Khatami Hasibuan");
    print("\n");
    print("Menu Kalkulator");
    print("1. Penjumlahan");
    print("2. Pengurangan");
    print("3. Perkalian");
    print("4. Pembagian");
    print("5. Exit");
    stdout.write("\nPilih Operator yang ingin digunakan: ");
    String? input = stdin.readLineSync();
    double? pilihan = double.tryParse(input ?? '') ?? 0;

    // Intruksi ketika User input pilihan 5
    if (pilihan == 5) {
      print(
          "Terimakasih telah menggunakan aplikasi kalkulator. Sampai jumpa\n");
      break;
    }

    // Pencegahan ketika User input diluar pilihan
    if (pilihan < 1 || pilihan > 5) {
      print("Pilihan tidak valid! Coba lagi\n");
      continue;
    }

    // User Input Angka Pertama
    stdout.write("Masukan Angka Pertama: ");
    String? input1 = stdin.readLineSync();
    double? angka1 = double.tryParse(input1 ?? '') ?? 0;

    // User Input Angka Kedua
    stdout.write("Masukan Angka Kedua: ");
    String? input2 = stdin.readLineSync();
    double? angka2 = double.tryParse(input2 ?? '') ?? 0;

    // Mencegah User tidak menginputkan angka
    if (input1 == null || input2 == null) {
      print("Input tidak valid! Masukan angka valid\n");
      continue;
    }

    // Variabel yang menambung nilai/hasil dari setiap operasi
    double hasil;

    // Situasi
    switch (pilihan) {
      case 1:
        hasil = jumlah(angka1, angka2);
        print("Hasil Penjumlahan adalah $hasil\n");
      case 2:
        hasil = kurang(angka1, angka2);
        print("Hasil Pengurangan adalah $hasil\n");
      case 3:
        hasil = kali(angka1, angka2);
        print("Hasil Perkalian adalah $hasil\n");
      case 4:
        hasil = bagi(angka1, angka2);
        print("Hasil Pembagian adalah $hasil\n");
    }
  }
}

// Fungsi Operator Penjumlahan
double jumlah(double a, double b) {
  return a + b;
}

// Fungsi Operator Pengurangan
double kurang(double a, double b) {
  return a - b;
}

// Fungsi Operator Perkalian
double kali(double a, double b) {
  return a * b;
}

// Fungsi Operator Pembagian
double bagi(double a, double b) {
  if (b == 0) {
    print(
        "Pembagian yang dibagi dengan 0 tidak akan dilakukan. Silahkan coba lagi!");
    return double.nan; // Mengembalikan Not Number
  } else {
    return a / b;
  }
}
