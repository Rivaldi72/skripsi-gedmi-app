import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class MataPelajaran extends StatelessWidget {
  const MataPelajaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mata Pelajaran"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
    );
  }
}
