import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CardIdentitasStudent extends StatelessWidget {
  final String judul, isi;

  const CardIdentitasStudent({
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
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            style: TextStyle(fontSize: 14.0),
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: isi,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
