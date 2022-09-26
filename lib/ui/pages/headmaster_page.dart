import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class HeadMasterPage extends StatelessWidget {
  const HeadMasterPage({Key? key}) : super(key: key);

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
                margin: EdgeInsets.only(top: 150),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  shape: BoxShape.circle,

                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  //borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/kepsek.png',
                    // height: 150,
                    // width: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Dr. MESRAN, M.Pdi',
                  style: blackTextStyle.copyWith(
                    fontSize: 23,
                    fontWeight: black,
                    height: 0.9,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: MediaQuery.of(context).size.width - 8,
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/images/tanggal.png'),
                        ),
                        Text(
                          'P. Siantar / 05 Juni 1973',
                          style: blackTextStyle.copyWith(
                            fontSize: 17,
                            fontWeight: black,
                            height: 0.9,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width - 8,
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('assets/images/jabatan.png'),
                            ),
                            Text(
                              'S3 - 2019',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: black,
                                height: 0.9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: MediaQuery.of(context).size.width - 8,
                            height: 50,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/agama.png'),
                                ),
                                Text(
                                  'Islam',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: black,
                                    height: 0.9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: MediaQuery.of(context).size.width - 8,
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child:
                                          Image.asset('assets/images/map.png'),
                                    ),
                                    Text(
                                      'JL. TS 01 Blok 6 Martubung',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: black,
                                        height: 0.9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
