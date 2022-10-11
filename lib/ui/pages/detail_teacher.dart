import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

import '../widget/card_menu_guru.dart';

class DetailTeacher extends StatefulWidget {
  DetailTeacher({Key? key}) : super(key: key);

  @override
  State<DetailTeacher> createState() => _DetailTeacherState();
}

class _DetailTeacherState extends State<DetailTeacher> {
  var menuGuru;

  Future<void> ambilDataGuru() async {
    final response = await http
        .get(Uri.parse('https://ayo-wisuda.site/api/gedmi/guru/index'));

    if (response.statusCode == 200) {
      menuGuru = jsonDecode(response.body.toString());
      return menuGuru;
    } else {
      throw Exception('Failed to load data');
    }
  }

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
          FutureBuilder(
            future: ambilDataGuru(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: menuGuru.length,
                    itemBuilder: (context, index) {
                      final menuGuru = snapshot.data as List;
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/identitas-teacher',
                            arguments: {
                              'id_user': menuGuru[index]['id_user'],
                              'nama': menuGuru[index]['nama'],
                              'tempat_lahir': menuGuru[index]['tempat_lahir'],
                              'tanggal_lahir': menuGuru[index]['tanggal_lahir'],
                              'jabatan': menuGuru[index]['jabatan'],
                              'tamatan': menuGuru[index]['tamatan'],
                              'gelar': menuGuru[index]['gelar'],
                              'bidang_studi': menuGuru[index]['bidang_studi'],
                              'agama': menuGuru[index]['agama'],
                              'alamat': menuGuru[index]['alamat'],
                            },
                          );
                        },
                        child: CardMenuGuru(
                          image: menuGuru[index]['image'] ??
                              'asssets/images/logo.png',
                          title: menuGuru[index]['title'] ??
                              'asssets/images/logo.png',
                          action: menuGuru[index]['action'] ?? '/teacher-page',
                        ),
                      );
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
