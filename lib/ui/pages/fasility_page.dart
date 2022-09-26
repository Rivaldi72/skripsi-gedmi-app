import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class FasilityPage extends StatelessWidget {
  const FasilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FASILITAS SEKOLAH"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/back.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
              ),
              SizedBox(height: 80),
              Expanded(
                child: ListView(
                  padding:
                      const EdgeInsets.only(bottom: 120, left: 20, right: 20),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width - 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: kBlackColor.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ruang Kesehatan',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: black,
                                        height: 0.9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Ruang kesehatan dengan fasilitas yang cukup memedai dan didesain agar siswa merasa nyaman. Didalam ruangan terdiri dari meja, kursi dan tempat tidur yang disediakan untuk siswa yang merasa kurang enak badan (sakit). Selain itu disediakan juga obat-obatan yang cukup lengkap, dan ada guru yang mengawasi atau mengobati. ',
                              textAlign: TextAlign.justify,
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: black,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          width: MediaQuery.of(context).size.width - 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                color: kBlackColor.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Kantin Sekolah',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: black,
                                    height: 0.9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Kantin sekolah SMP Bina Taruna Medan menyediakan makanan dan minuman ringan yang sudah terjamin kebersihan, halal dan aman dikonsumsi untuk para siswa.',
                              textAlign: TextAlign.justify,
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: black,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          width: MediaQuery.of(context).size.width - 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                color: kBlackColor.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Mushollah',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: black,
                                    height: 0.9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Mushollah berada didalam area sekolah. Untuk mendukung pelayanan terharap jamaah, mushollah dilengkapi dengan peralatan sholat yang memadai, yang sekaligus tempat aktifitas keagamaan.',
                              textAlign: TextAlign.justify,
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: black,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          width: MediaQuery.of(context).size.width - 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                color: kBlackColor.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Lapangan Olahraga',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: black,
                                    height: 0.9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Lapangan olahraga didesain untuk beragam pelajaran olahraga seperti bola basket, footsal, volley, badminton dan lainnya. Lapangan olahraga yang luas dan sarana olahraga yang beragam memberi peluang lebih besar untuk dapat mengembangkan motorik kasar dan bakat anak.',
                              textAlign: TextAlign.justify,
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: black,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
