import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class Visi extends StatelessWidget {
  const Visi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visi Misi"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 210,
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
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Visi SMP Bina Taruna Medan',
                                      textAlign: TextAlign.center,
                                      style: blackTextStyle.copyWith(
                                        fontSize: 20,
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Menciptakan peserta didik yang berprestasi dan berwawasan dengan dilandasi iman dan taqwa terhadap tuhan yang maha esa.',
                              textAlign: TextAlign.justify,
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: black,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 80),
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
                                  'Misi SMP Bina Taruna Medan',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
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
                          '1. Melaksanakan proses belajar mengajar yang efektif dengan meningkatkan disiplin guru dan siswa.',
                          textAlign: TextAlign.justify,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: black,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          '2. Memotivasi Siswa untuk giat belajar.',
                          textAlign: TextAlign.justify,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: black,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          '3. Menanamkan kebersamaan dan kesetiakawanan sosial serta memiliki kepedulian yang tinggi.',
                          textAlign: TextAlign.justify,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: black,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          '4. Menanamkan nilai iman dan taqwa kepada Tuhan Yang Maha Esa melalui berbagai kegiatan dan pendidikan agama.',
                          textAlign: TextAlign.justify,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: black,
                            height: 1.5,
                          ),
                        ),
                      ),
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
