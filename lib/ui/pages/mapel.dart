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
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(
                  label: Text('ID',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Nama Guru',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Pelajaran',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Agung Sihotong, S.Pd')),
                DataCell(Text('IPA')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Almas Adlina, S.Pd')),
                DataCell(Text('Matematika')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Diana Susanti, S.Pd')),
                DataCell(Text('B.Indonesia')),
              ]),
              DataRow(
                cells: [
                  DataCell(Text('4')),
                  DataCell(Text('Erlina S., S.Pd')),
                  DataCell(Text('Agama Kristen')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('5')),
                  DataCell(Text('Fitriana, S.S')),
                  DataCell(Text('B. Inggris')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('6')),
                  DataCell(Text('Gaya Bayduri, S.Pdi')),
                  DataCell(Text('PAI')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('7')),
                  DataCell(Text('Hengki S Sianturi, S.Pd')),
                  DataCell(Text('Penjas')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('8')),
                  DataCell(Text('Intan Sari S.')),
                  DataCell(Text('IPA')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('9')),
                  DataCell(Text('Jessica Yolanda, S.Pd')),
                  DataCell(Text('Seni Budaya')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('10')),
                  DataCell(Text('Kety Suyati, S.Pd')),
                  DataCell(Text('PAI')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('11')),
                  DataCell(Text('Novenna N., S.Kom')),
                  DataCell(Text('B.Indonesia')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('12')),
                  DataCell(Text('Nurdiana Sari, S.Pd')),
                  DataCell(Text('B.Indonesia')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('13')),
                  DataCell(Text('Salamudin')),
                  DataCell(Text('Pramuka')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('14')),
                  DataCell(Text('Tatang A Trg., S.Psi')),
                  DataCell(Text('BK')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('15')),
                  DataCell(Text('ZL. Purba, Amd')),
                  DataCell(Text('PKn')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
