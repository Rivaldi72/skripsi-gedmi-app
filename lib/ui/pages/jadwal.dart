import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class JadwalMapel extends StatelessWidget {
  const JadwalMapel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Mata Pelajaran"),
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
                height: 500,
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
                          Navigator.pushNamed(context, '/jadwalmapel7')),
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
                      onTap: (() =>
                          Navigator.pushNamed(context, '/jadwalmapel8')),
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
                      onTap: (() =>
                          Navigator.pushNamed(context, '/jadwalmapel9')),
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
