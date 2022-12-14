import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/custom_card_menu.dart';

class TeacherPage extends StatefulWidget {
  TeacherPage({Key? key}) : super(key: key);

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
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
      "image": "assets/images/gambar.png",
      "title": "Galeri",
      "action": "/informasi-page"
    },
    {
      "image": "assets/images/guru.png",
      "title": "Guru",
      "action": "/detail-teacher-page"
    },
    // {
    //   "image": "assets/images/mapel.png",
    //   "title": "MataPelajaran",
    //   "action": "/mapel",
    // },
    {
      "image": "assets/images/mapel.png",
      "title": "Jadwal MaPel",
      "action": "/jadwalmapel"
    },
  ];
  logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'SMP BINA TARUNA MEDAN',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: Container(
                width: 200,
                height: 50,
                margin: EdgeInsets.all(10),
                child: Card(
                  color: kPrimaryColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                      ),
                      Text(
                        "Keluar",
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  elevation: 8,
                  shadowColor: Colors.blue,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
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
