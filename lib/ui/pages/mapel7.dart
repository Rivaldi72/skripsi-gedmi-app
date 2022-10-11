import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';

class JadwalMapel7 extends StatelessWidget {
  const JadwalMapel7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Kelas VII"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: const [
            RosterWidget(
              header1: 'Jam',
              header2: 'B.Studi',
              header3: 'Guru',
              hari: 'Senin',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget('07:30 - 08:00')),
                    DataCell(CellWidget('PKN')),
                    DataCell(CellWidget('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:00 - 08:30')),
                    DataCell(CellWidget('B.Inggris')),
                    DataCell(CellWidget('Keti Suyati, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:30 - 09:00')),
                    DataCell(CellWidget('IPA')),
                    DataCell(CellWidget('Intan Sari Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:00 - 09:30')),
                    DataCell(CellWidget('IPA')),
                    DataCell(CellWidget('Intan Sari Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:30 - 10:00')),
                    DataCell(CellWidget('B.Indonesia')),
                    DataCell(CellWidget('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('10:00 - 10:30')),
                    DataCell(CellWidget('B.Indonesia')),
                    DataCell(CellWidget('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget(
              marginTop: 34,
              hari: 'Selasa',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget('07:30 - 08:00')),
                    DataCell(CellWidget('Matematika')),
                    DataCell(CellWidget('	Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:00 - 08:30')),
                    DataCell(CellWidget('Matematika')),
                    DataCell(CellWidget('	Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:30 - 09:00')),
                    DataCell(CellWidget('PKN')),
                    DataCell(CellWidget('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:00 - 09:30')),
                    DataCell(CellWidget('B.Inggris')),
                    DataCell(CellWidget('Keti Suyati, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:30 - 10:00')),
                    DataCell(CellWidget('B.Indonesia')),
                    DataCell(CellWidget('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('10:00 - 10:30')),
                    DataCell(CellWidget('B.Indonesia')),
                    DataCell(CellWidget('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget(
              marginTop: 34,
              hari: 'Rabu',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget('07:30 - 08:00')),
                    DataCell(CellWidget('IPS')),
                    DataCell(CellWidget('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:00 - 08:30')),
                    DataCell(CellWidget('IPS')),
                    DataCell(CellWidget('ZL. Purba, A.Md')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:30 - 09:00')),
                    DataCell(CellWidget('B.Indonesia')),
                    DataCell(CellWidget('Diana Susanti Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:00 - 09:30')),
                    DataCell(CellWidget('B.Inggris')),
                    DataCell(CellWidget('Keti Suyati, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:30 - 10:00')),
                    DataCell(CellWidget('SBK')),
                    DataCell(CellWidget('Jessica Yolanda, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('10:00 - 10:30')),
                    DataCell(CellWidget('Agama')),
                    DataCell(CellWidget('Gaya Baiduri, S.Pdi')),
                  ],
                ),
              ],
            ),
            RosterWidget(
              marginTop: 34,
              hari: 'Kamis',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget('07:30 - 08:00')),
                    DataCell(CellWidget('IPA')),
                    DataCell(CellWidget('Intan Sari Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:00 - 08:30')),
                    DataCell(CellWidget('IPA')),
                    DataCell(CellWidget('Intan Sari Siregar, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:30 - 09:00')),
                    DataCell(CellWidget('SBK')),
                    DataCell(CellWidget('Jessica Yolanda, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:00 - 09:30')),
                    DataCell(CellWidget('IPS')),
                    DataCell(CellWidget('Keti Suyati, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:30 - 10:00')),
                    DataCell(CellWidget('Matematika')),
                    DataCell(CellWidget('Siti Agustina Julita, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('10:00 - 10:30')),
                    DataCell(CellWidget('Matematika')),
                    DataCell(CellWidget('Siti Agustina Julita, S.Pd')),
                  ],
                ),
              ],
            ),
            RosterWidget(
              marginTop: 34,
              hari: 'Jumat',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget('07:30 - 08:00')),
                    DataCell(CellWidget('Penjas')),
                    DataCell(CellWidget('Hengki S. Sianturi, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:00 - 08:30')),
                    DataCell(CellWidget('Penjas')),
                    DataCell(CellWidget('Hengki S. Sianturi, S.Pd')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:30 - 09:00')),
                    DataCell(CellWidget('Agama')),
                    DataCell(CellWidget('Gaya Baiduri, S.Pdi')),
                  ],
                ),
              ],
            ),
            RosterWidget(
              marginTop: 34,
              hari: 'Sabtu',
              dataRows: [
                DataRow(
                  cells: [
                    DataCell(CellWidget('07:30 - 08:00')),
                    DataCell(CellWidget('Pramuka')),
                    DataCell(CellWidget('Salamuddin')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:00 - 08:30')),
                    DataCell(CellWidget('Pramuka')),
                    DataCell(CellWidget('Salamuddin')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('08:30 - 09:00')),
                    DataCell(CellWidget('Agama')),
                    DataCell(CellWidget('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:30 - 10:00')),
                    DataCell(CellWidget('Agama')),
                    DataCell(CellWidget('Gaya Baiduri, S.Pdi')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(CellWidget('09:30 - 10:00')),
                    DataCell(CellWidget('Agama')),
                    DataCell(CellWidget('Gaya Baiduri, S.Pdi')),
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

class CellWidget extends StatelessWidget {
  final String content;
  const CellWidget(this.content, {Key? key}) : super(key: key);

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

class RosterWidget extends StatelessWidget {
  final String header1, header2, header3, hari;
  final double marginTop;
  final List<DataRow> dataRows;
  const RosterWidget({
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
