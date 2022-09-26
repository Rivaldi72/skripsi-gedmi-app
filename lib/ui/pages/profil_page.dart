import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  'assets/images/bgprofile.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 130),
                width: 230,
                height: 100,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'PROFIL SEKOLAH',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: black,
                      height: 0.9,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (() => Navigator.pushNamed(context, '/visi-page')),
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/visi.png'),
                          ),
                          Text(
                            'Visi Misi',
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
                  GestureDetector(
                    onTap: (() =>
                        Navigator.pushNamed(context, '/headmaster-page')),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/kepala.png'),
                          ),
                          Text(
                            'Kepala Sekolah',
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
                  GestureDetector(
                    onTap: (() =>
                        Navigator.pushNamed(context, '/school-identity')),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/identitas.png'),
                          ),
                          Text(
                            'Identitas Sekolah',
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
                  GestureDetector(
                    onTap: (() =>
                        Navigator.pushNamed(context, '/contact-page')),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/kontak.png'),
                          ),
                          Text(
                            'Kontak',
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
                  GestureDetector(
                    onTap: (() => Navigator.pushNamed(context, '/peta-page')),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/map.png'),
                          ),
                          Text(
                            'Peta Lokasi',
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
