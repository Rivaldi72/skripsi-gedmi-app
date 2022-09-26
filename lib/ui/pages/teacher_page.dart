import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/custom_card_menu.dart';

class TeacherPage extends StatelessWidget {
  TeacherPage({Key? key}) : super(key: key);
  var menuTeacher = [
    {
      "image": "assets/images/profil.png",
      "title": "Profil",
      "action": "/profil"
    },
    {
      "image": "assets/images/fasilitas.png",
      "title": "Fasilitas",
      "action": "/fasility-page"
    },
    {
      "image": "assets/images/kelas.png",
      "title": "Siswa",
      "action": "/kelas-page"
    },
    {
      "image": "assets/images/informasi.png",
      "title": "Informasi",
      "action": "/informasi-page"
    },
    {
      "image": "assets/images/guru.png",
      "title": "Guru",
      "action": "/detail-teacher-page"
    },
    {
      "image": "assets/images/mapel.png",
      "title": "MaPel",
      "action": "/profil",
    },
    {"image": "assets/images/nilai.png", "title": "Nilai", "action": "/profil"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'SMP Bina Taruna Medan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: black,
                height: 0.9,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(18),
                itemCount: menuTeacher.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CardMenu(
                    image: menuTeacher[index]['image'] ??
                        'asssets/images/logo.png',
                    title: menuTeacher[index]['title'] ??
                        'asssets/images/logo.png',
                    action: menuTeacher[index]['action'] ?? '/teacher-page',
                  );
                }),
          )
        ],
      ),
    );
  }
}
