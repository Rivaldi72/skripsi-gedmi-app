import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class CardMenuSiswa extends StatelessWidget {
  final String image, title, nis;
  const CardMenuSiswa({
    Key? key,
    required this.image,
    required this.title,
    required this.nis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 50,
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    nis,
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
