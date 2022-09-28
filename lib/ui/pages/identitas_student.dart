import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import '../widget/card_identitas_student.dart';

class IdentitasStudent extends StatelessWidget {
  final String isi;
  const IdentitasStudent({Key? key, this.isi = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          CardIdentitasStudent(
            judul: "NIS",
            label: "Masukkan NIS",
            isi: isi == '1' ? "21288090" : "21288091",
          ),
          CardIdentitasStudent(
            judul: "Nama",
            label: "Masukkan Nama",
            isi: isi == '1' ? "Adira Wibowo" : "Agustina Risentri Salme H.",
          ),
          CardIdentitasStudent(
            judul: "Tempat Lahir",
            label: "Masukkan Tempat Lahir",
            isi: isi == '1' ? "Medan" : "Medan",
          ),
          CardIdentitasStudent(
            judul: "Tanggal Lahir",
            label: "Masukkan Tanggal Lahir",
            isi: isi == '1' ? "28 Mei 2009" : "20 Maret 2009",
          ),
          CardIdentitasStudent(
            judul: "Tahun Masuk",
            label: "Masukkan Tahun Masuk",
            isi: isi == '1' ? "2022" : "2022",
          ),
          CardIdentitasStudent(
            judul: "Jenis Kelamin",
            label: "Masukkan Jenis Kelamin",
            isi: isi == '1' ? "Perempuan" : "Perempuan",
          ),
          CardIdentitasStudent(
            judul: "Agama",
            label: "Masukkan Agama",
            isi: isi == '1' ? "Islam" : "Islam",
          ),
          CardIdentitasStudent(
            judul: "Alamat",
            label: "Masukkan Alamat",
            isi: isi == '1' ? "Jl. Marelan V Pasar 2 Barat" : "Jl. Marelan III",
          ),
        ],
      ),
    );
  }
}
