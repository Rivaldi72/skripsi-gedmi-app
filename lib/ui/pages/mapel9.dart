import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class JadwalMapel9 extends StatelessWidget {
  const JadwalMapel9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Kelas IX"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: const [
            RosterWidget9(
              header1: 'Jam',
              header2: 'B.Studi',
              header3: 'Guru',
              hari: 'Senin',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:45 - 11:15')),
                    DataCell(CellWidget9('Matematika')),
                    DataCell(CellWidget9('Almas Adlina, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:15 - 11:45')),
                    DataCell(CellWidget9('IPA')),
                    DataCell(CellWidget9('Agung Sihotang, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:45 - 12.15')),
                    DataCell(CellWidget9('IPA')),
                    DataCell(CellWidget9('Agung Sihotang, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:15 - 12:45')),
                    DataCell(CellWidget9('IPS')),
                    DataCell(CellWidget9('Dr. Mesran, M.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:45 - 13:15')),
                    DataCell(CellWidget9('PKN')),
                    DataCell(CellWidget9('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('13:15 - 13:45')),
                    DataCell(CellWidget9('PKN')),
                    DataCell(CellWidget9('ZL. Purba, A.Md')),
                  ],
                ),
              ],
            ),
            RosterWidget9(
              marginTop: 34,
              hari: 'Selasa',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:45 - 11:15')),
                    DataCell(CellWidget9('IPS')),
                    DataCell(CellWidget9('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:15 - 11:45')),
                    DataCell(CellWidget9('IPS')),
                    DataCell(CellWidget9('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:45 - 12.15')),
                    DataCell(CellWidget9('B.Inggris')),
                    DataCell(CellWidget9('Keti Suyati, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:15 - 12:45')),
                    DataCell(CellWidget9('B.Indonesia')),
                    DataCell(CellWidget9('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:45 - 13:15')),
                    DataCell(CellWidget9('B.Indonesia')),
                    DataCell(CellWidget9('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('13:15 - 13:45')),
                    DataCell(CellWidget9('B.Indonesia')),
                    DataCell(CellWidget9('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget9(
              marginTop: 34,
              hari: 'Rabu',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:45 - 11:15')),
                    DataCell(CellWidget9('SBK')),
                    DataCell(CellWidget9('Jessica Yolanda, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:15 - 11:45')),
                    DataCell(CellWidget9('SBK')),
                    DataCell(CellWidget9('Jessica Yolanda, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:45 - 12.15')),
                    DataCell(CellWidget9('Matematika')),
                    DataCell(CellWidget9('Almas Adlina, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:15 - 12:45')),
                    DataCell(CellWidget9('Matematika')),
                    DataCell(CellWidget9('Almas Adlina, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:45 - 13:15')),
                    DataCell(CellWidget9('Matematika')),
                    DataCell(CellWidget9('Almas Adlina, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('13:15 - 13:45')),
                    DataCell(CellWidget9('B.Inggris')),
                    DataCell(CellWidget9('Keti Suyati, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget9(
              marginTop: 34,
              hari: 'Kamis',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:45 - 11:15')),
                    DataCell(CellWidget9('B.Indonesia')),
                    DataCell(CellWidget9('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:15 - 11:45')),
                    DataCell(CellWidget9('B.Indonesia')),
                    DataCell(CellWidget9('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:45 - 12.15')),
                    DataCell(CellWidget9('Penjas')),
                    DataCell(CellWidget9('Hengki S. Sianturi, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:15 - 12:45')),
                    DataCell(CellWidget9('Penjas')),
                    DataCell(CellWidget9('Hengki S. Sianturi, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('12:45 - 13:15')),
                    DataCell(CellWidget9('Prakarya')),
                    DataCell(CellWidget9('Novenna Nurmalasari, S.Kom')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('13:15 - 13:45')),
                    DataCell(CellWidget9('Prakarya')),
                    DataCell(CellWidget9('Novenna Nurmalasari, S.Kom')),
                  ],
                ),
              ],
            ),
            RosterWidget9(
              marginTop: 34,
              hari: 'Jumat',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget9('09:15 - 09:45')),
                    DataCell(CellWidget9('Agama')),
                    DataCell(CellWidget9('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('09:45 - 10:15')),
                    DataCell(CellWidget9('Agama')),
                    DataCell(CellWidget9('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:15 - 10.45')),
                    DataCell(CellWidget9('B.Inggris')),
                    DataCell(CellWidget9('Keti Suyati, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget9(
              marginTop: 34,
              hari: 'Sabtu',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:15 - 10:45')),
                    DataCell(CellWidget9('Agama')),
                    DataCell(CellWidget9('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('10:45 - 11:15')),
                    DataCell(CellWidget9('Agama')),
                    DataCell(CellWidget9('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget9('11:15 - 11.45')),
                    DataCell(CellWidget9('B.Inggris')),
                    DataCell(CellWidget9('Keti Suyati, S.Pd')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CellWidget9 extends StatelessWidget {
  final String content;
  const CellWidget9(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .23,
      child: Text(
        content,
        style: blackTextStyle.copyWith(fontSize: 10),
        overflow: TextOverflow.visible,
        softWrap: true,
      ),
    );
  }
}

class RosterWidget9 extends StatelessWidget {
  final String header1, header2, header3, hari;
  final double marginTop;
  final List<DataRow> dataRows;
  const RosterWidget9({
    Key? key,
    this.header1 = '',
    this.header2 = '',
    this.header3 = '',
    this.marginTop = 0,
    required this.dataRows,
    required this.hari,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          padding: const EdgeInsets.only(left: 18, top: 18),
          margin: EdgeInsets.only(top: marginTop),
          child: Text(
            hari,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),
          ),
        ),
        DataTable(
          columnSpacing: 0,
          columns: [
            DataColumn(label: Text(header1)),
            DataColumn(label: Text(header2)),
            DataColumn(label: Text(header3)),
          ],
          rows: dataRows,
        ),
      ],
    );
  }
}
