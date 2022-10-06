import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class IdentitasTeacher extends StatelessWidget {
  const IdentitasTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    print(arguments['idGuru'] + 'sdasdasd');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          IdentitasGuru(
            judul: "Nama",
            label: "Masukkan Nama",
            isi: arguments['idGuru'] == '1'
                ? "Dr. Mesran, M.Pd"
                : "Tatang A Traigan,  S.Psi",
          ),
          IdentitasGuru(
            judul: "Tempat Lahir",
            label: "Masukkan Tempat Lahir",
            isi: arguments['idGuru'] == '1' ? "P. Siantar" : "Medan",
          ),
          IdentitasGuru(
            judul: "Tanggal Lahir",
            label: "Masukkan Tanggal Lahir",
            isi: arguments['idGuru'] == '1' ? "1973-06-05" : "1984-06-28",
          ),
          IdentitasGuru(
            judul: "Jabatan",
            label: "Masukkan Jabatan",
            isi: arguments['idGuru'] == '1' ? "Kepala Sekolah" : "Guru",
          ),
          IdentitasGuru(
            judul: "Tamatan",
            label: "Masukkan Tamatan",
            isi: arguments['idGuru'] == '1' ? "2019" : "2001",
          ),
          IdentitasGuru(
            judul: "Gelar",
            label: "Masukkan Gelar",
            isi: arguments['idGuru'] == '1' ? "S3" : "S1",
          ),
          IdentitasGuru(
            judul: "Bidang Studi",
            label: "Masukkan Bidang Studi",
            isi: arguments['idGuru'] == '1' ? "-" : "Bimbingan Konseling (BK)",
          ),
          IdentitasGuru(
            judul: "Agama",
            label: "Masukkan Agama",
            isi: arguments['idGuru'] == '1' ? "Islam" : "Islam",
          ),
          IdentitasGuru(
            judul: "Alamat",
            label: "Masukkan Alamat",
            isi: arguments['idGuru'] == '1'
                ? "JL. TS 01 Blok 6. Martubung"
                : "JL. Pasar III Marelan",
          ),
        ],
      ),
    );
  }
}

class IdentitasGuru extends StatelessWidget {
  final String judul, label, isi;
  final textController = TextEditingController();

  IdentitasGuru({
    Key? key,
    required this.judul,
    required this.label,
    required this.isi,
  }) : super(key: key);

  void dispose() {
    textController.dispose();
    dispose();
  }

  @override
  Widget build(BuildContext context) {
    textController.text = isi;
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: textController,
            style: const TextStyle(fontSize: 14.0),
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
