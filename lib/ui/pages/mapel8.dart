import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class JadwalMapel8 extends StatelessWidget {
  const JadwalMapel8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Kelas VIII"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  color: kPurpleColor,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text(
                      'Senin',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: black,
                        height: 0.9,
                      ),
                    ),
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
