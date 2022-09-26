import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/card_menu_siswa.dart';

class DetailStudent extends StatelessWidget {
  DetailStudent({Key? key}) : super(key: key);
  var menuSiswa = [
    {
      "image": "assets/images/siswi.png",
      "title": "Adira Wibowo",
      "nis": "21288090",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Agustina Risentri Salme H.",
      "nis": "21288091",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Aldo Ardiansyah Tarigan",
      "nis": "21288092",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Angel Kids Coilal",
      "nis": "21288093",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Annisa Nurul Qulbi",
      "nis": "21288094",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Arif Prawira Sihombing",
      "nis": "21288095",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Belinda Cicilia Dakhi",
      "nis": "21288096",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Dika Satrio",
      "nis": "21288097",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Dimas Albianto",
      "nis": "21288098",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Intan",
      "nis": "21288099",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Jessica Priscilia Hondro",
      "nis": "21288100",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Kayra Shalimar",
      "nis": "21288101",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Keisita Maharani",
      "nis": "21288102",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Keyra Suci Ramadhanti Hrp.",
      "nis": "21288103",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Luis Kristian Yasarododo Hondro",
      "nis": "21288104",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "M. Hanafiz",
      "nis": "21288105",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Muhammad Aidil",
      "nis": "21288106",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Muhammad Al Riyansyah",
      "nis": "21288107",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Muhammad Andika Pratama",
      "nis": "21288108",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Muhammad Nanda",
      "nis": "21288109",
      "action": "/identitas-student",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelas VII"),
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
                  );
                }),
          ),
        ],
      ),
    );
  }
}
