import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CardIdentitasStudent extends StatelessWidget {
  final String judul, isi;
  final bool readOnly, centerText;
  final double textSize;
  TextEditingController textController = TextEditingController();

  CardIdentitasStudent({
    Key? key,
    this.readOnly = true,
    required this.judul,
    this.textSize = 18.0,
    this.centerText = false,
    required this.isi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    textController.text = isi;
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          centerText
              ? Center(
                  child: Text(
                    judul,
                    style: TextStyle(fontSize: textSize),
                  ),
                )
              : Text(
                  judul,
                  style: TextStyle(fontSize: textSize),
                ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: textController..text = isi,
            readOnly: readOnly,
            style: const TextStyle(fontSize: 14.0),
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 15),
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
