import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class IdentitasTeacher extends StatelessWidget {
  const IdentitasTeacher({Key? key}) : super(key: key);

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
          CardIdentitasTeacher(
            judul: "Nama",
            isi: arguments['nama'],
            placeholder: "Masukkan Nama",
          ),
          CardIdentitasTeacher(
            judul: "Tempat Lahir",
            isi: arguments['tempat_lahir'],
            placeholder: "Masukkan Tempat Lahir",
          ),
          CardIdentitasTeacher(
            judul: "Tanggal Lahir",
            isi: arguments['tanggal_lahir'],
            placeholder: "Masukkan Tanggal Lahir",
          ),
          CardIdentitasTeacher(
            judul: "Jabatan",
            isi: arguments['jabatan'],
            placeholder: "Masukkan Jabatan",
          ),
          CardIdentitasTeacher(
            judul: "Tamatan",
            isi: arguments['tamatan'],
            placeholder: "Masukkan Tamatan",
          ),
          CardIdentitasTeacher(
            judul: "Gelar",
            isi: arguments['gelar'],
            placeholder: "Masukkan Gelar",
          ),
          CardIdentitasTeacher(
            judul: "Bidang Studi",
            isi: arguments['bidang_studi'],
            placeholder: "Masukkan Bidang Studi",
          ),
          CardIdentitasTeacher(
            judul: "Agama",
            isi: arguments['agama'],
            placeholder: "Masukkan Agama",
          ),
          CardIdentitasTeacher(
            judul: "Alamat",
            isi: arguments['alamat'],
            placeholder: "Masukkan Alamat",
          ),
        ],
      ),
    );
  }
}

class CardIdentitasTeacher extends StatelessWidget {
  final String judul, placeholder, isi;
  final bool readOnly;
  TextEditingController textController = TextEditingController();
  CardIdentitasTeacher({
    Key? key,
    this.readOnly = true,
    required this.judul,
    required this.isi,
    required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            controller: textController..text = isi,
            readOnly: readOnly,
            style: const TextStyle(fontSize: 14.0),
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: placeholder,
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
