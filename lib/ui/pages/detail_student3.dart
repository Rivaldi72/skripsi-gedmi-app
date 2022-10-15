import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import 'package:http/http.dart' as http;

import '../widget/card_menu_siswa.dart';

class DetailStudent3 extends StatefulWidget {
  DetailStudent3({Key? key}) : super(key: key);

  @override
  State<DetailStudent3> createState() => _DetailStudent3State();
}

class _DetailStudent3State extends State<DetailStudent3> {
  var menuSiswa;
  Future<void> ambilDataSiswa3() async {
    final response = await http.get(
        Uri.parse('https://ayo-wisuda.site/api/gedmi/siswa/indexsiswa/IX'));

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
        title: Text("Kelas IX"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(),
          FutureBuilder(
            future: ambilDataSiswa3(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: menuSiswa.length,
                    itemBuilder: (context, index) {
                      final menuSiswa = snapshot.data as List;
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/identitas-student',
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
                              'matematika_1': menuSiswa[index]['matematika_1'],
                              'bindo_1': menuSiswa[index]['bindo_1'],
                              'bing_1': menuSiswa[index]['bing_1'],
                              'ipa_1': menuSiswa[index]['ipa_1'],
                              'ips_1': menuSiswa[index]['ips_1'],
                              'pkn_1': menuSiswa[index]['pkn_1'],
                              'agama_1': menuSiswa[index]['agama_1'],
                              'penjas_1': menuSiswa[index]['penjas_1'],
                              'senbud_1': menuSiswa[index]['senbud_1'],
                              'matematika_2': menuSiswa[index]['matematika_2'],
                              'bindo_2': menuSiswa[index]['bindo_2'],
                              'bing_2': menuSiswa[index]['bing_2'],
                              'ipa_2': menuSiswa[index]['ipa_2'],
                              'ips_2': menuSiswa[index]['ips_2'],
                              'pkn_2': menuSiswa[index]['pkn_2'],
                              'agama_2': menuSiswa[index]['agama_2'],
                              'penjas_2': menuSiswa[index]['penjas_2'],
                              'senbud_2': menuSiswa[index]['senbud_2'],
                              'matematika_3': menuSiswa[index]['matematika_3'],
                              'bindo_3': menuSiswa[index]['bindo_3'],
                              'bing_3': menuSiswa[index]['bing_3'],
                              'ipa_3': menuSiswa[index]['ipa_3'],
                              'ips_3': menuSiswa[index]['ips_3'],
                              'pkn_3': menuSiswa[index]['pkn_3'],
                              'agama_3': menuSiswa[index]['agama_3'],
                              'penjas_3': menuSiswa[index]['penjas_3'],
                              'senbud_3': menuSiswa[index]['senbud_3'],
                              'matematika_4': menuSiswa[index]['matematika_4'],
                              'bindo_4': menuSiswa[index]['bindo_4'],
                              'bing_4': menuSiswa[index]['bing_4'],
                              'ipa_4': menuSiswa[index]['ipa_4'],
                              'ips_4': menuSiswa[index]['ips_4'],
                              'pkn_4': menuSiswa[index]['pkn_4'],
                              'agama_4': menuSiswa[index]['agama_4'],
                              'penjas_4': menuSiswa[index]['penjas_4'],
                              'senbud_4': menuSiswa[index]['senbud_4'],
                              'matematika_5': menuSiswa[index]['matematika_5'],
                              'bindo_5': menuSiswa[index]['bindo_5'],
                              'bing_5': menuSiswa[index]['bing_5'],
                              'ipa_5': menuSiswa[index]['ipa_5'],
                              'ips_5': menuSiswa[index]['ips_5'],
                              'pkn_5': menuSiswa[index]['pkn_5'],
                              'agama_5': menuSiswa[index]['agama_5'],
                              'penjas_5': menuSiswa[index]['penjas_5'],
                              'senbud_5': menuSiswa[index]['senbud_5'],
                              'matematika_6': menuSiswa[index]['matematika_6'],
                              'bindo_6': menuSiswa[index]['bindo_6'],
                              'bing_6': menuSiswa[index]['bing_6'],
                              'ipa_6': menuSiswa[index]['ipa_6'],
                              'ips_6': menuSiswa[index]['ips_6'],
                              'pkn_6': menuSiswa[index]['pkn_6'],
                              'agama_6': menuSiswa[index]['agama_6'],
                              'penjas_6': menuSiswa[index]['penjas_6'],
                              'senbud_6': menuSiswa[index]['senbud_6'],
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
