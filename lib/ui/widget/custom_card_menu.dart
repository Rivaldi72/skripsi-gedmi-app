import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class CardMenu extends StatelessWidget {
  final String image, title, action;

  const CardMenu({
    Key? key,
    required this.image,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, action);
      },
      child: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 10),
            Text(title)
          ],
        ),
      ),
    );
  }
}
