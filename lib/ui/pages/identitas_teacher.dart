import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class IdentitasTeacher extends StatelessWidget {
  const IdentitasTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          CardIdentitasTeacher(
            judul: "Nama",
            isi: "Masukkan Nama",
          ),
          CardIdentitasTeacher(
            judul: "Tempat Lahir",
            isi: "Masukkan Tempat Lahir",
          ),
          CardIdentitasTeacher(
            judul: "Tanggal Lahir",
            isi: "Masukkan Tanggal Lahir",
          ),
          CardIdentitasTeacher(
            judul: "Jabatan",
            isi: "Masukkan Jabatan",
          ),
          CardIdentitasTeacher(
            judul: "Tamatan",
            isi: "Masukkan Tamatan",
          ),
          CardIdentitasTeacher(
            judul: "Gelar",
            isi: "Masukkan Gelar",
          ),
          CardIdentitasTeacher(
            judul: "Bidang Studi",
            isi: "Masukkan Bidang Studi",
          ),
          CardIdentitasTeacher(
            judul: "Agama",
            isi: "Masukkan Agama",
          ),
          CardIdentitasTeacher(
            judul: "Alamat",
            isi: "Masukkan Alamat",
          ),
        ],
      ),
    );
  }
}

class CardIdentitasTeacher extends StatelessWidget {
  final String judul, isi;

  const CardIdentitasTeacher({
    Key? key,
    required this.judul,
    required this.isi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 20, left: 20),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            style: TextStyle(fontSize: 14.0),
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: isi,
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
