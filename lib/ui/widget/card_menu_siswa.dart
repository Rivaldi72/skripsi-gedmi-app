import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class CardMenuSiswa extends StatelessWidget {
  final String image, title, nis, action, id_siswa;
  const CardMenuSiswa({
    Key? key,
    required this.id_siswa,
    required this.image,
    required this.title,
    required this.nis,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          action,
          arguments: {'id_siswa': id_siswa},
        );
      },
      child: Container(
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
      ),
    );
  }
}
