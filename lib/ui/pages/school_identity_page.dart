import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class SchoolIdentityPage extends StatelessWidget {
  const SchoolIdentityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Identitas Sekolah"),
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
                padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                margin: EdgeInsets.only(top: 150),
              ),
              SizedBox(height: 50),
              Expanded(
                child: ListView(
                  children: [
                    CardIdentitas(
                      judul: "NPSN",
                      isi: "10210143",
                    ),
                    CardIdentitas(
                      judul: "NSS",
                      isi: "204076011369",
                    ),
                    CardIdentitas(
                      judul: "Status",
                      isi: "Swasta",
                    ),
                    CardIdentitas(
                      judul: "Bentuk Pendidikan",
                      isi: "SMP",
                    ),
                    CardIdentitas(
                      judul: "Status Kepemilikan",
                      isi: "Yayasan",
                    ),
                    CardIdentitas(
                      judul: "Akreditasi",
                      isi: "B",
                    ),
                    CardIdentitas(
                      judul: "No. SK",
                      isi: "893/BANSM/PROVSU/LL/XII/2018",
                    ),
                    CardIdentitas(
                      judul: "Tanggal SK Akreditasi",
                      isi: "15-12-2018",
                    ),
                    CardIdentitas(
                      judul: "SK Pendirian Sekolah",
                      isi: "65",
                    ),
                    CardIdentitas(
                      judul: "Tanggal SK Pendirian",
                      isi: "1996-08-10",
                    ),
                    CardIdentitas(
                      judul: "SK Izin Operasional",
                      isi: "420/6454/2004",
                    ),
                    CardIdentitas(
                      judul: "Tanggal SK Izin Operasional",
                      isi: "2004/04/07",
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

class CardIdentitas extends StatelessWidget {
  final String judul, isi;

  const CardIdentitas({
    Key? key,
    required this.judul,
    required this.isi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 20, left: 20),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: TextStyle(fontWeight: black, fontSize: 18.0),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width - 20,
            height: 48,
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    isi,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      height: 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
