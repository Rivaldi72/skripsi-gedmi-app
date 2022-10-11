import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CardNilai extends StatelessWidget {
  final String mapel, placeholder, nilai;
  final bool readOnly;
  TextEditingController textController = TextEditingController();

  CardNilai({
    Key? key,
    this.readOnly = true,
    required this.mapel,
    required this.placeholder,
    required this.nilai,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    textController.text = nilai;
    return Row(
      children: [
        Text(
          mapel,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          controller: textController..text = nilai,
          readOnly: readOnly,
          style: const TextStyle(fontSize: 14.0),
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: placeholder,
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
        Text(
          mapel,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          controller: textController..text = nilai,
          readOnly: readOnly,
          style: const TextStyle(fontSize: 14.0),
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: placeholder,
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
    );
  }
}
