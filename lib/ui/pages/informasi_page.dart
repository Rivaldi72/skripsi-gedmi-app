import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListGambar(
            gambar: "assets/images/halaman.jpeg",
            judul: "Lapangan Olahraga",
          ),
          ListGambar(
            gambar: "assets/images/kelas2.jpeg",
            judul: "Ruangan Kelas",
          ),
          ListGambar(
            gambar: "assets/images/ruang.jpg",
            judul: "Ruangan Kelas",
          ),
          ListGambar(
            gambar: "assets/images/toilet.jpeg",
            judul: "Toilet Siswa",
          ),
          ListGambar(
            gambar: "assets/images/depan.jpg",
            judul: "Depan Sekolah",
          ),
        ],
      ),
    );
  }
}

class ListGambar extends StatelessWidget {
  final String gambar, judul;

  const ListGambar({
    Key? key,
    required this.gambar,
    required this.judul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              gambar,
            ),
            Text(
              judul,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
