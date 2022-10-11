import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import 'package:http/http.dart' as http;
import '../widget/card_menu_siswa.dart';

class DetailStudent extends StatefulWidget {
  DetailStudent({Key? key}) : super(key: key);

  @override
  State<DetailStudent> createState() => _DetailStudentState();
}

class _DetailStudentState extends State<DetailStudent> {
  var menuSiswa;
  Future<void> ambilDataSiswa() async {
    final response = await http
        .get(Uri.parse('https://ayo-wisuda.site/api/gedmi/siswa/indexsiswa'));

    if (response.statusCode == 200) {
      menuSiswa = jsonDecode(response.body.toString());
      return menuSiswa;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siswa Kelas VII"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(),
          FutureBuilder(
            future: ambilDataSiswa(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: menuSiswa.lenght,
                    itemBuilder: (context, index) {
                      final menuSiswa = snapshot.data as List;
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/identitas_student',
                            arguments: {
                              'id_user': menuSiswa[index]['id_user'],
                              'nis': menuSiswa[index]['nis'],
                              'nama': menuSiswa[index]['nama'],
                              'tempat_lahir': menuSiswa[index]['tempat_lahir'],
                              'tanggal_lahir': menuSiswa[index]
                                  ['tanggal_lahir'],
                              'tahun_masuk': menuSiswa[index]['tahun_masuk'],
                              'jenis_kelamin': menuSiswa[index]
                                  ['jenis_kelamin'],
                              'agama': menuSiswa[index]['agama'],
                              'alamat': menuSiswa[index]['alamat'],
                            },
                          );
                        },
                        child: CardMenuSiswa(
                          image: 'assets/images/siswi.png',
                          title: menuSiswa[index]['nama'] ?? 'Nama tidak ada',
                          nis: menuSiswa[index]['nis'] ?? 'Nis tidak ada',
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
          ),
        ],
      ),
    );
  }
}
