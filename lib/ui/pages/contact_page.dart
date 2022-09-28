import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
                    CardContact(
                      judul: "Nama Sekolah",
                      isi: "SMP Bina Taruna Medan",
                    ),
                    CardContact(
                      judul: "NPSN",
                      isi: "10210143",
                    ),
                    CardContact(
                      judul: "Alamat",
                      isi: "Jln.marelan Raya No. 100",
                    ),
                    CardContact(
                      judul: "Kode Pos",
                      isi: "20255",
                    ),
                    CardContact(
                      judul: "Desa/Kelurahan",
                      isi: "Rengas Pulau",
                    ),
                    CardContact(
                      judul: "Kecamatan",
                      isi: "Medan Marelan",
                    ),
                    CardContact(
                      judul: "Kota/Kebupaten",
                      isi: "Kota Medan",
                    ),
                    CardContact(
                      judul: "Provinsi",
                      isi: "Sumatera Utara",
                    ),
                    CardContact(
                      judul: "Email",
                      isi: "smpswtbinataruna@gmail.com",
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

class CardContact extends StatelessWidget {
  final String judul, isi;

  const CardContact({
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
