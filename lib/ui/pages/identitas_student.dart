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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            CardIdentitasStudent(
              judul: "NIS",
              isi: arguments['nis'],
            ),
            CardIdentitasStudent(
              judul: "Nama",
              isi: arguments['nama'],
            ),
            CardIdentitasStudent(
              judul: "Tempat Lahir",
              isi: arguments['tempat_lahir'],
            ),
            CardIdentitasStudent(
              judul: "Tanggal Lahir",
              isi: arguments['tanggal_lahir'],
            ),
            CardIdentitasStudent(
              judul: "Tahun Masuk",
              isi: arguments['tahun_masuk'],
            ),
            CardIdentitasStudent(
              judul: "Jenis Kelamin",
              isi: arguments['jenis_kelamin'],
            ),
            CardIdentitasStudent(
              judul: "Agama",
              isi: arguments['agama'],
            ),
            CardIdentitasStudent(
              judul: "Alamat",
              isi: arguments['alamat'],
            ),
            ExpansionTile(
              title: const Text('Semester 1'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Bahasa Indonesia",
                        isi: arguments['nis'],
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "NIS",
                        isi: arguments['nis'],
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "NIS",
                        isi: arguments['nis'],
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Semester 2'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Bahasa Indonesia",
                        isi: arguments['nis'],
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "NIS",
                        isi: arguments['nis'],
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "NIS",
                        isi: arguments['nis'],
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
