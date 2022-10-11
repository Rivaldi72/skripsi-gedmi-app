import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class JadwalMapel8 extends StatelessWidget {
  const JadwalMapel8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Kelas VIII"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: const [
            RosterWidget8(
              header1: 'Jam',
              header2: 'B.Studi',
              header3: 'Guru',
              hari: 'Senin',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget8('07:30 - 08:00')),
                    DataCell(CellWidget8('Prakarya')),
                    DataCell(CellWidget8('Novenna Nurmalasari, S.Kom')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:00 - 08:30')),
                    DataCell(CellWidget8('Prakarya')),
                    DataCell(CellWidget8('Novenna Nurmalasari, S.Kom')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:30 - 09:00')),
                    DataCell(CellWidget8('IPS')),
                    DataCell(CellWidget8('Dr. Mesran, M.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:00 - 09:30')),
                    DataCell(CellWidget8('IPS')),
                    DataCell(CellWidget8('Dr. Mesran, M.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:30 - 10:00')),
                    DataCell(CellWidget8('IPA')),
                    DataCell(CellWidget8('Intan Sari Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('10:00 - 10:30')),
                    DataCell(CellWidget8('IPA')),
                    DataCell(CellWidget8('Intan Sari Siregar, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget8(
              marginTop: 34,
              hari: 'Selasa',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget8('07:30 - 08:00')),
                    DataCell(CellWidget8('PKN')),
                    DataCell(CellWidget8('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:00 - 08:30')),
                    DataCell(CellWidget8('PKN')),
                    DataCell(CellWidget8('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:30 - 09:00')),
                    DataCell(CellWidget8('Matematika')),
                    DataCell(CellWidget8('Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:00 - 09:30')),
                    DataCell(CellWidget8('Matematika')),
                    DataCell(CellWidget8('Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:30 - 10:00')),
                    DataCell(CellWidget8('B.Inggris')),
                    DataCell(CellWidget8('Keti Suyati, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('10:00 - 10:30')),
                    DataCell(CellWidget8('B.Inggris')),
                    DataCell(CellWidget8('Keti Suyati, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget8(
              marginTop: 34,
              hari: 'Rabu',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget8('07:30 - 08:00')),
                    DataCell(CellWidget8('SBK')),
                    DataCell(CellWidget8('Jessica Yolanda, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:00 - 08:30')),
                    DataCell(CellWidget8('SBK')),
                    DataCell(CellWidget8('Jessica Yolanda, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:30 - 09:00')),
                    DataCell(CellWidget8('IPS')),
                    DataCell(CellWidget8('Dr. Mesran, M.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:00 - 09:30')),
                    DataCell(CellWidget8('B.Indonesia')),
                    DataCell(CellWidget8('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:30 - 10:00')),
                    DataCell(CellWidget8('B.Indonesia')),
                    DataCell(CellWidget8('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('10:00 - 10:30')),
                    DataCell(CellWidget8('B.Indonesia')),
                    DataCell(CellWidget8('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget8(
              marginTop: 34,
              hari: 'Kamis',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget8('07:30 - 08:00')),
                    DataCell(CellWidget8('Matematika')),
                    DataCell(CellWidget8('Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:00 - 08:30')),
                    DataCell(CellWidget8('Matematika')),
                    DataCell(CellWidget8('Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:30 - 09:00')),
                    DataCell(CellWidget8('Penjas')),
                    DataCell(CellWidget8('Hengki S. Sianturi, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:00 - 09:30')),
                    DataCell(CellWidget8('Penjas')),
                    DataCell(CellWidget8('Hengki S. Sianturi, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:30 - 10:00')),
                    DataCell(CellWidget8('IPA')),
                    DataCell(CellWidget8('Intan Sari Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('10:00 - 10:30')),
                    DataCell(CellWidget8('IPA')),
                    DataCell(CellWidget8('Intan Sari Siregar, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget8(
              marginTop: 34,
              hari: 'Jumat',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget8('07:30 - 08:00')),
                    DataCell(CellWidget8('Agama')),
                    DataCell(CellWidget8('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:00 - 08:30')),
                    DataCell(CellWidget8('Agama')),
                    DataCell(CellWidget8('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:30 - 09:00')),
                    DataCell(CellWidget8('B.Inggris')),
                    DataCell(CellWidget8('Keti Suyati, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget8(
              marginTop: 34,
              hari: 'Sabtu',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget8('07:30 - 08:00')),
                    DataCell(CellWidget8('Pramuka')),
                    DataCell(CellWidget8('Salamuddin')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:00 - 08:30')),
                    DataCell(CellWidget8('Pramuka')),
                    DataCell(CellWidget8('Salamuddin')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('08:30 - 09:00')),
                    DataCell(CellWidget8('B.Indonesia')),
                    DataCell(CellWidget8('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('09:30 - 10:00')),
                    DataCell(CellWidget8('B.Indonesia')),
                    DataCell(CellWidget8('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget8('10:00 - 10:30')),
                    DataCell(CellWidget8('B.Inggris')),
                    DataCell(CellWidget8('Keti Suyati, S.Pd')),
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

class CellWidget8 extends StatelessWidget {
  final String content;
  const CellWidget8(this.content, {Key? key}) : super(key: key);

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

class RosterWidget8 extends StatelessWidget {
  final String header1, header2, header3, hari;
  final double marginTop;
  final List<DataRow> dataRows;
  const RosterWidget8({
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
