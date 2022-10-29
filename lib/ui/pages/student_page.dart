import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skripsi/shared/theme.dart';
import 'package:http/http.dart' as http;

import '../widget/custom_card_menu.dart';

class StudentPage extends StatefulWidget {
  StudentPage({Key? key}) : super(key: key);

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  var menuStudent = [
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
      "image": "assets/images/gambar.png",
      "title": "Galeri",
      "action": "/informasi-page"
    },
    // {
    //   "image": "assets/images/guru.png",
    //   "title": "Guru",
    //   "action": "/detail-teacher-page"
    // },
    // {
    //   "image": "assets/images/kelas.png",
    //   "title": "Siswa",
    //   "action": "/kelas-page"
    // },
    // {
    //   "image": "assets/images/mapel.png",
    //   "title": "MataPelajaran",
    //   "action": "/mapel"
    // },
    {
      "image": "assets/images/mapel.png",
      "title": "Jadwal MaPel",
      "action": "/jadwalmapel"
    },
  ];
  var nis = '';
  var nama = '';
  var tempat_lahir = '';
  var tanggal_lahir = '';
  var tahun_masuk = '';
  var jenis_kelamin = '';
  var agama = '';
  var alamat = '';
  var kelas = '';
  var matematika_1 = '';
  var bindo_1 = '';
  var bing_1 = '';
  var ipa_1 = '';
  var ips_1 = '';
  var pkn_1 = '';
  var agama_1 = '';
  var penjas_1 = '';
  var senbud_1 = '';
  var matematika_2 = '';
  var bindo_2 = '';
  var bing_2 = '';
  var ipa_2 = '';
  var ips_2 = '';
  var pkn_2 = '';
  var agama_2 = '';
  var penjas_2 = '';
  var senbud_2 = '';
  var matematika_3 = '';
  var bindo_3 = '';
  var bing_3 = '';
  var ipa_3 = '';
  var ips_3 = '';
  var pkn_3 = '';
  var agama_3 = '';
  var penjas_3 = '';
  var senbud_3 = '';
  var matematika_4 = '';
  var bindo_4 = '';
  var bing_4 = '';
  var ipa_4 = '';
  var ips_4 = '';
  var pkn_4 = '';
  var agama_4 = '';
  var penjas_4 = '';
  var senbud_4 = '';
  var matematika_5 = '';
  var bindo_5 = '';
  var bing_5 = '';
  var ipa_5 = '';
  var ips_5 = '';
  var pkn_5 = '';
  var agama_5 = '';
  var penjas_5 = '';
  var senbud_5 = '';
  var matematika_6 = '';
  var bindo_6 = '';
  var bing_6 = '';
  var ipa_6 = '';
  var ips_6 = '';
  var pkn_6 = '';
  var agama_6 = '';
  var penjas_6 = '';
  var senbud_6 = '';
  logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  getBiodataSiswa(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nis = prefs.getString('nis') ?? '';
    nama = prefs.getString('nama') ?? '';
    tempat_lahir = prefs.getString('tempat_lahir') ?? '';
    tanggal_lahir = prefs.getString('tanggal_lahir') ?? '';
    tahun_masuk = prefs.getString('tahun_masuk') ?? '';
    jenis_kelamin = prefs.getString('jenis_kelamin') ?? '';
    agama = prefs.getString('agama') ?? '';
    alamat = prefs.getString('alamat') ?? '';
    kelas = prefs.getString('kelas') ?? '';
    matematika_1 = prefs.getString('matematika_1') ?? '';
    bindo_1 = prefs.getString('bindo_1') ?? '';
    bing_1 = prefs.getString('bing_1') ?? '';
    ipa_1 = prefs.getString('ipa_1') ?? '';
    ips_1 = prefs.getString('ips_1') ?? '';
    pkn_1 = prefs.getString('pkn_1') ?? '';
    agama_1 = prefs.getString('agama_1') ?? '';
    penjas_1 = prefs.getString('penjas_1') ?? '';
    senbud_1 = prefs.getString('senbud_1') ?? '';
    matematika_2 = prefs.getString('matematika_2') ?? '';
    bindo_2 = prefs.getString('bindo_2') ?? '';
    bing_2 = prefs.getString('bing_2') ?? '';
    ipa_2 = prefs.getString('ipa_2') ?? '';
    ips_2 = prefs.getString('ips_2') ?? '';
    pkn_2 = prefs.getString('pkn_2') ?? '';
    agama_2 = prefs.getString('agama_2') ?? '';
    penjas_2 = prefs.getString('penjas_2') ?? '';
    senbud_2 = prefs.getString('senbud_2') ?? '';
    matematika_3 = prefs.getString('matematika_3') ?? '';
    bindo_3 = prefs.getString('bindo_3') ?? '';
    bing_3 = prefs.getString('bing_3') ?? '';
    ipa_3 = prefs.getString('ipa_3') ?? '';
    ips_3 = prefs.getString('ips_3') ?? '';
    pkn_3 = prefs.getString('pkn_3') ?? '';
    agama_3 = prefs.getString('agama_3') ?? '';
    penjas_3 = prefs.getString('penjas_3') ?? '';
    senbud_3 = prefs.getString('senbud_3') ?? '';
    matematika_4 = prefs.getString('matematika_4') ?? '';
    bindo_4 = prefs.getString('bindo_4') ?? '';
    bing_4 = prefs.getString('bing_4') ?? '';
    ipa_4 = prefs.getString('ipa_4') ?? '';
    ips_4 = prefs.getString('ips_4') ?? '';
    pkn_4 = prefs.getString('pkn_4') ?? '';
    agama_4 = prefs.getString('agama_4') ?? '';
    penjas_4 = prefs.getString('penjas_4') ?? '';
    senbud_4 = prefs.getString('senbud_4') ?? '';
    matematika_5 = prefs.getString('matematika_5') ?? '';
    bindo_5 = prefs.getString('bindo_5') ?? '';
    bing_5 = prefs.getString('bing_5') ?? '';
    ipa_5 = prefs.getString('ipa_5') ?? '';
    ips_5 = prefs.getString('ips_5') ?? '';
    pkn_5 = prefs.getString('pkn_5') ?? '';
    agama_5 = prefs.getString('agama_5') ?? '';
    penjas_5 = prefs.getString('penjas_5') ?? '';
    senbud_5 = prefs.getString('senbud_5') ?? '';
    matematika_6 = prefs.getString('matematika_6') ?? '';
    bindo_6 = prefs.getString('bindo_6') ?? '';
    bing_6 = prefs.getString('bing_6') ?? '';
    ipa_6 = prefs.getString('ipa_6') ?? '';
    ips_6 = prefs.getString('ips_6') ?? '';
    pkn_6 = prefs.getString('pkn_6') ?? '';
    agama_6 = prefs.getString('agama_6') ?? '';
    penjas_6 = prefs.getString('penjas_6') ?? '';
    senbud_6 = prefs.getString('senbud_6') ?? '';
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getBiodataSiswa(context);
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
            ListTile(
              title: const Text('Data Diri'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/identitas-student',
                  arguments: {
                    'nis': nis,
                    'nama': nama,
                    'tempat_lahir': tempat_lahir,
                    'tanggal_lahir': tanggal_lahir,
                    'tahun_masuk': tahun_masuk,
                    'jenis_kelamin': jenis_kelamin,
                    'agama': agama,
                    'alamat': alamat,
                    'kelas': kelas,
                    'matematika_1': matematika_1,
                    'bindo_1': bindo_1,
                    'bing_1': bing_1,
                    'ipa_1': ipa_1,
                    'ips_1': ips_1,
                    'pkn_1': pkn_1,
                    'agama_1': agama_1,
                    'penjas_1': penjas_1,
                    'senbud_1': senbud_1,
                    'matematika_2': matematika_2,
                    'bindo_2': bindo_2,
                    'bing_2': bing_2,
                    'ipa_2': ipa_2,
                    'ips_2': ips_2,
                    'pkn_2': pkn_2,
                    'agama_2': agama_2,
                    'penjas_2': penjas_2,
                    'senbud_2': senbud_2,
                    'matematika_3': matematika_3,
                    'bindo_3': bindo_3,
                    'bing_3': bing_3,
                    'ipa_3': ipa_3,
                    'ips_3': ips_3,
                    'pkn_3': pkn_3,
                    'agama_3': agama_3,
                    'penjas_3': penjas_3,
                    'senbud_3': senbud_3,
                    'matematika_4': matematika_4,
                    'bindo_4': bindo_4,
                    'bing_4': bing_4,
                    'ipa_4': ipa_4,
                    'ips_4': ips_4,
                    'pkn_4': pkn_4,
                    'agama_4': agama_4,
                    'penjas_4': penjas_4,
                    'senbud_4': senbud_4,
                    'matematika_5': matematika_5,
                    'bindo_5': bindo_5,
                    'bing_5': bing_5,
                    'ipa_5': ipa_5,
                    'ips_5': ips_5,
                    'pkn_5': pkn_5,
                    'agama_5': agama_5,
                    'penjas_5': penjas_5,
                    'senbud_5': senbud_5,
                    'matematika_6': matematika_6,
                    'bindo_6': bindo_6,
                    'bing_6': bing_6,
                    'ipa_6': ipa_6,
                    'ips_6': ips_6,
                    'pkn_6': pkn_6,
                    'agama_6': agama_6,
                    'penjas_6': penjas_6,
                    'senbud_6': senbud_6,
                  },
                );
              },
            ),
            GestureDetector(
              onTap: () {
                logOut();
                Navigator.pushNamed(context, '/login');
              },
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
                itemCount: menuStudent.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CardMenu(
                    image: menuStudent[index]['image'] ??
                        'asssets/images/logo.png',
                    title: menuStudent[index]['title'] ??
                        'asssets/images/logo.png',
                    action: menuStudent[index]['action'] ?? '/student-page',
                  );
                }),
          )
        ],
      ),
    );
  }
}
