import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class KelasPage extends StatelessWidget {
  const KelasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siswa"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 140,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg2.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: (() =>
                          Navigator.pushNamed(context, '/detail-student-page')),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('assets/images/kelas.png',
                                width: 50, height: 50),
                          ),
                          Text(
                            'Kelas VII',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: black,
                              height: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(
                          context, '/detail-student-page2')),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('assets/images/kelas.png',
                                width: 50, height: 50),
                          ),
                          Text(
                            'Kelas VIII',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: black,
                              height: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(
                          context, '/detail-student-page3')),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('assets/images/kelas.png',
                                width: 50, height: 50),
                          ),
                          Text(
                            'Kelas IX',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: black,
                              height: 3,
                            ),
                          ),
                        ],
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
