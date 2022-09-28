import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import '../widget/card_identitas_student.dart';

class IdentitasStudent extends StatelessWidget {
  const IdentitasStudent({Key? key}) : super(key: key);

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
            isi: "Masukkan NIS",
          ),
          CardIdentitasStudent(
            judul: "Nama",
            isi: "Masukkan Nama",
          ),
          CardIdentitasStudent(
            judul: "Tempat Lahir",
            isi: "Masukkan Tempat Lahir",
          ),
          CardIdentitasStudent(
            judul: "Tanggal Lahir",
            isi: "Masukkan Tanggal Lahir",
          ),
          CardIdentitasStudent(
            judul: "Tahun Masuk",
            isi: "Masukkan Tahun Masuk",
          ),
          CardIdentitasStudent(
            judul: "Jenis Kelamin",
            isi: "Masukkan Jenis Kelamin",
          ),
          CardIdentitasStudent(
            judul: "Agama",
            isi: "Masukkan Agama",
          ),
          CardIdentitasStudent(
            judul: "Alamat",
            isi: "Masukkan Alamat",
          ),
        ],
      ),
    );
  }
}
