import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/card_menu_siswa.dart';

class DetailStudent3 extends StatelessWidget {
  DetailStudent3({Key? key}) : super(key: key);
  var menuSiswa = [
    {
      "image": "assets/images/siswa.png",
      "title": "Agung Ibrahim",
      "nis": "19212941",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Albariqi Deanda Tarigan",
      "nis": "19212942",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Alisya Oktaviona Meydi",
      "nis": "19212943",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Andre",
      "nis": "19212944",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Billi Akbar",
      "nis": "19212945",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Elisabet Lisna Laia",
      "nis": "19212946",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Faza Ananta",
      "nis": "19212947",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "FItri",
      "nis": "19212948",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Habdis Hazami Habdad",
      "nis": "19212949",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Haikal Syahputra",
      "nis": "19212950",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Henokrhett Corinti Hutabarat",
      "nis": "19212952",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Herman Jaya Laoli",
      "nis": "19212953",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Kelvin Riko Saftoni S.",
      "nis": "19212955",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Khairiah Arfa",
      "nis": "19212956",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Kristina Olivia Sagala",
      "nis": "19212958",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Lionel Messi",
      "nis": "19212959",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "M. Rafa'i",
      "nis": "19212960",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Mahyudiansyah",
      "nis": "19212961",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Marsia Dkra Bago",
      "nis": "19212962",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Muhammad Irfansyah",
      "nis": "19212963",
      "action": "/identitas-student",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelas IX"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: menuSiswa.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardMenuSiswa(
                    image:
                        menuSiswa[index]['image'] ?? 'assets/images/siswi.png',
                    title:
                        menuSiswa[index]['title'] ?? 'assets/images/siswi.png',
                    nis: menuSiswa[index]['nis'] ?? 'assets/images/siswi.png',
                    action: menuSiswa[index]['action'] ?? '/identitas-student',
                    idSiswa: menuSiswa[index]['id_siswa'] ?? '1',
                  );
                }),
          ),
        ],
      ),
    );
  }
}
