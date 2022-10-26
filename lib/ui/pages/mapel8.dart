import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import 'package:http/http.dart' as http;

class JadwalMapel8 extends StatefulWidget {
  const JadwalMapel8({Key? key}) : super(key: key);

  @override
  State<JadwalMapel8> createState() => _JadwalMapel8State();
}

class _JadwalMapel8State extends State<JadwalMapel8> {
  var jadwalMapel;
  Future<void> ambilDataRoster() async {
    final response = await http
        .get(Uri.parse('https://ayo-wisuda.site/api/gedmi/mapel/VIII'));

    if (response.statusCode == 200) {
      jadwalMapel = jsonDecode(response.body.toString());
      return jadwalMapel;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Kelas VIII"),
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: ambilDataRoster(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: jadwalMapel.length,
                    itemBuilder: (context, index) {
                      var jadwal;
                      switch (index) {
                        case 0:
                          jadwal = jadwalMapel['Senin'];
                          break;
                        case 1:
                          jadwal = jadwalMapel['Selasa'];
                          break;
                        case 2:
                          jadwal = jadwalMapel['Rabu'];
                          break;
                        case 3:
                          jadwal = jadwalMapel['Kamis'];
                          break;
                        case 4:
                          jadwal = jadwalMapel['Jumat'];
                          break;
                        case 5:
                          jadwal = jadwalMapel['Sabtu'];
                          break;
                        default:
                      }
                      return RosterWidget8(
                        marginTop: index == 0 ? 0 : 34,
                        header1: index != 0 ? '' : 'Jam',
                        header2: index != 0 ? '' : 'B.Studi',
                        header3: index != 0 ? '' : 'Guru',
                        hari: jadwal[0]['hari'],
                        dataRows: [
                          for (var item in jadwal)
                            DataRow(
                              cells: [
                                DataCell(CellWidget8(item['jam'])),
                                DataCell(CellWidget8(item['bidang_studi'])),
                                DataCell(CellWidget8(item['nama_guru'])),
                              ],
                            ),
                        ],
                      );
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
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
