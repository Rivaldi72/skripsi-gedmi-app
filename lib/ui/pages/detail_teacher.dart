import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/card_menu_guru.dart';

class DetailTeacher extends StatelessWidget {
  DetailTeacher({Key? key}) : super(key: key);
  var menuGuru = [
    {
      "image": "assets/images/laki.png",
      "title": "Dr. Mesran, M.Pdi",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/laki.png",
      "title": "Tatang A Tarigan, S.Psi",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "ZL. Purba, Amd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Fitriana, SS",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/laki.png",
      "title": "Gaya Bayduri, S.Pdi",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Novena Nurmalasari, S.Kom",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Diana Susanti, S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Siti Agustina Julita, S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Intan Sari Siregar",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/laki.png",
      "title": "Hengki S. Sianturi, S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Erlina Simanjuntak",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Jessica Yolanda Oldi Srg. S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Nurdiana Sari, M.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Kety Suyati, S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/guru.png",
      "title": "Almas Adlina, S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/laki.png",
      "title": "Agung Sihotang, S.Pd",
      "action": "/identitas-teacher",
    },
    {
      "image": "assets/images/laki.png",
      "title": "Salamudin",
      "action": "/identitas-teacher",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GURU"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: menuGuru.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardMenuGuru(
                    image:
                        menuGuru[index]['image'] ?? 'asssets/images/logo.png',
                    title:
                        menuGuru[index]['title'] ?? 'asssets/images/logo.png',
                    action: menuGuru[index]['action'] ?? '/teacher-page',
                  );
                }),
          ),
        ],
      ),
    );
  }
}
