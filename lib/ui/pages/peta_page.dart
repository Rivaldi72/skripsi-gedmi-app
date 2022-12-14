import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class PetaPage extends StatelessWidget {
  const PetaPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          _launchUrl(Uri.parse('https://goo.gl/maps/dNx8PhNsWQMVbE398'));
        },
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/map.jpeg",
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
              Text(
                'SMP BINA TARUNA MEDAN',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: black,
                  height: 3,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
