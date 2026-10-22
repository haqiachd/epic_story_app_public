import 'package:flutter/material.dart';

class EpicColors{
  static const black = Colors.black;
  static const white = Colors.white;
  static const purple = Colors.purple;
  static const deepPurple = Colors.deepPurple;
  static const errorText = Colors.red;
  static const hintText = Colors.blueGrey;

  // Warna utama yang sering dipakai di komponen seperti AppBar, tombol, dll.
  static const Color primary = Color.fromARGB(255, 167, 194, 208);

  // Warna varian dari primary, biasanya lebih gelap, digunakan untuk efek atau tampilan lain.
  static const Color primaryVariant = Color(0xFF3700B3);

  // Warna sekunder yang digunakan untuk elemen yang ingin ditonjolkan.
  static const Color secondary = Color(0xFF03DAC6);

  // Warna varian dari secondary, lebih gelap, untuk efek atau tampilan lain.
  static const Color secondaryVariant = Color(0xFF018786);

  // Warna latar belakang untuk layar aplikasi.
  static const Color background = Color.fromARGB(255, 240, 244, 250);

  // Warna untuk permukaan elemen seperti kartu atau dialog.
  static const Color surface = Color(0xFFFFFFFF);

  // Warna untuk menampilkan pesan kesalahan.
  static const Color error = Color(0xFFB00020);

  static const Color warning = Color(0xFFFFCC00); // Warna kuning untuk warning

  // Warna teks atau ikon yang berada di atas warna primary, biasanya putih.
  static const Color onPrimary = Color(0xFFFFFFFF);

  // Warna teks atau ikon yang berada di atas warna secondary, biasanya hitam.
  static const Color onSecondary = Color(0xFF000000);

  // Warna teks atau ikon yang berada di atas warna background, biasanya hitam.
  static const Color onBackground = Color.fromARGB(168, 21, 21, 21);

  // Warna teks atau ikon yang berada di atas warna surface, biasanya hitam.
  static const Color onSurface = Color(0xFF000000);

  // Warna teks atau ikon yang berada di atas warna error, biasanya putih.
  static const Color onError = Color(0xFFFFFFFF);

  static const Color onWarning = Color(0xFF000000); // Warna teks (kontras dengan warning)
}