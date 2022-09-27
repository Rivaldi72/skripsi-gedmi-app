import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CardIdentitasStudent extends StatelessWidget {
  final String judul, label, isi;
  final textController = TextEditingController();

  CardIdentitasStudent({
    Key? key,
    required this.judul,
    required this.label,
    required this.isi,
  }) : super(key: key);

  void dispose() {
    textController.dispose();
    dispose();
  }

  @override
  Widget build(BuildContext context) {
    textController.text = isi;
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: textController,
            style: const TextStyle(fontSize: 14.0),
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: label,
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
