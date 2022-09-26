import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/card_menu_siswa.dart';

class DetailStudent2 extends StatelessWidget {
  DetailStudent2({Key? key}) : super(key: key);
  var menuSiswa = [
    {
      "image": "assets/images/siswi.png",
      "title": "Abdul Rahim Nasution",
      "nis": "21288090",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Amelia Rahmawti",
      "nis": "21288091",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Anggun Febrian Cantika Sari",
      "nis": "21288092",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Aryanda Royhan",
      "nis": "21288093",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Bunga Nurhalimah",
      "nis": "21288094",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Dama Yanti",
      "nis": "21288095",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Dinda Permata Sari ",
      "nis": "21288096",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Dwi Amelyah",
      "nis": "21288097",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Fadil Candra Arbianto",
      "nis": "21288098",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Fauzan Azima",
      "nis": "21288099",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Fery Gunawan",
      "nis": "21288100",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Gilang Pranata",
      "nis": "21288101",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Heru Hermawan",
      "nis": "21288102",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Ikhsan Prayoga",
      "nis": "21288103",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Imanuel Telaubanua",
      "nis": "21288104",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Imam Mahdi",
      "nis": "21288105",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Indah Ayu Lestari",
      "nis": "21288106",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Kezia Natalia Waruwu",
      "nis": "21288107",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswa.png",
      "title": "Krisna Erlangga",
      "nis": "21288108",
      "action": "/identitas-student",
    },
    {
      "image": "assets/images/siswi.png",
      "title": "Lisna Wati Lature",
      "nis": "21288109",
      "action": "/identitas-student",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelas VIII"),
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
