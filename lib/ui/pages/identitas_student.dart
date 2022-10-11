import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import '../widget/card_identitas_student.dart';

class IdentitasStudent extends StatelessWidget {
  const IdentitasStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

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
            isi: arguments['nis'],
          ),
          CardIdentitasStudent(
            judul: "Nama",
            label: "Masukkan Nama",
            isi: arguments['nama'],
          ),
          CardIdentitasStudent(
            judul: "Tempat Lahir",
            label: "Masukkan Tempat Lahir",
            isi: arguments['tempat_lahir'],
          ),
          CardIdentitasStudent(
            judul: "Tanggal Lahir",
            label: "Masukkan Tanggal Lahir",
            isi: arguments['tanggal_lahir'],
          ),
          CardIdentitasStudent(
            judul: "Tahun Masuk",
            label: "Masukkan Tahun Masuk",
            isi: arguments['tahun_masuk'],
          ),
          CardIdentitasStudent(
            judul: "Jenis Kelamin",
            label: "Masukkan Jenis Kelamin",
            isi: arguments['jenis_kelamin'],
          ),
          CardIdentitasStudent(
            judul: "Agama",
            label: "Masukkan Agama",
            isi: arguments['agama'],
          ),
          CardIdentitasStudent(
            judul: "Alamat",
            label: "Masukkan Alamat",
            isi: arguments['agama'],
          ),
        ],
      ),
    );
  }
}
