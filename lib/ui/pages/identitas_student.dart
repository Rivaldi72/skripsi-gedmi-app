import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import '../widget/card_identitas_student.dart';

class IdentitasStudent extends StatelessWidget {
  final String isi;
  const IdentitasStudent({Key? key, required this.isi}) : super(key: key);

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
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Nama",
            label: "Masukkan Nama",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Tempat Lahir",
            label: "Masukkan Tempat Lahir",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Tanggal Lahir",
            label: "Masukkan Tanggal Lahir",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Tahun Masuk",
            label: "Masukkan Tahun Masuk",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Jenis Kelamin",
            label: "Masukkan Jenis Kelamin",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Agama",
            label: "Masukkan Agama",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
          CardIdentitasStudent(
            judul: "Alamat",
            label: "Masukkan Alamat",
            isi: isi == '1' ? "Data Siswa 1" : "Data Siswa 2",
          ),
        ],
      ),
    );
  }
}
