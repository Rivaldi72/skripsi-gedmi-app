import 'package:flutter/material.dart';
import 'package:skripsi/shared/theme.dart';
import '../widget/card_identitas_student.dart';

class IdentitasStudent extends StatelessWidget {
  const IdentitasStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            CardIdentitasStudent(
              judul: "NIS",
              isi: arguments['nis'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Nama",
              isi: arguments['nama'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Tempat Lahir",
              isi: arguments['tempat_lahir'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Tanggal Lahir",
              isi: arguments['tanggal_lahir'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Tahun Masuk",
              isi: arguments['tahun_masuk'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Jenis Kelamin",
              isi: arguments['jenis_kelamin'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Agama",
              isi: arguments['agama'] ?? '',
            ),
            CardIdentitasStudent(
              judul: "Alamat",
              isi: arguments['alamat'] ?? '',
            ),
            ExpansionTile(
              title: const Text('Semester 1'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Matematika",
                        isi: arguments['matematika_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Indonesia",
                        isi: arguments['bindo_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Inggris",
                        isi: arguments['bing_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPA",
                        isi: arguments['ipa_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPS",
                        isi: arguments['ips_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "PKn",
                        isi: arguments['pkn_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Agama",
                        isi: arguments['agama_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Penjas",
                        isi: arguments['penjas_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Seni Budaya",
                        isi: arguments['senbud_1'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Semester 2'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Matematika",
                        isi: arguments['matematika_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Indonesia",
                        isi: arguments['bindo_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Inggris",
                        isi: arguments['bing_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPA",
                        isi: arguments['ipa_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPS",
                        isi: arguments['ips_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "PKn",
                        isi: arguments['pkn_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Agama",
                        isi: arguments['agama_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Penjas",
                        isi: arguments['penjas_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Seni Budaya",
                        isi: arguments['senbud_2'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Semester 3'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Matematika",
                        isi: arguments['matematika_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Indonesia",
                        isi: arguments['bindo_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Inggris",
                        isi: arguments['bing_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPA",
                        isi: arguments['ipa_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPS",
                        isi: arguments['ips_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "PKn",
                        isi: arguments['pkn_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Agama",
                        isi: arguments['agama_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Penjas",
                        isi: arguments['penjas_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Seni Budaya",
                        isi: arguments['senbud_3'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Semester 4'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Matematika",
                        isi: arguments['matematika_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Indonesia",
                        isi: arguments['bindo_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Inggris",
                        isi: arguments['bing_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPA",
                        isi: arguments['ipa_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPS",
                        isi: arguments['ips_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "PKn",
                        isi: arguments['pkn_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Agama",
                        isi: arguments['agama_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Penjas",
                        isi: arguments['penjas_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Seni Budaya",
                        isi: arguments['senbud_4'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Semester 5'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Matematika",
                        isi: arguments['matematika_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Indonesia",
                        isi: arguments['bindo_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Inggris",
                        isi: arguments['bing_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPA",
                        isi: arguments['ipa_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPS",
                        isi: arguments['ips_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "PKn",
                        isi: arguments['pkn_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Agama",
                        isi: arguments['agama_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Penjas",
                        isi: arguments['penjas_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Seni Budaya",
                        isi: arguments['senbud_5'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Semester 6'),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Matematika",
                        isi: arguments['matematika_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Indonesia",
                        isi: arguments['bindo_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "B.Inggris",
                        isi: arguments['bing_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPA",
                        isi: arguments['ipa_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "IPS",
                        isi: arguments['ips_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "PKn",
                        isi: arguments['pkn_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Agama",
                        isi: arguments['agama_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Penjas",
                        isi: arguments['penjas_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                    Expanded(
                      child: CardIdentitasStudent(
                        judul: "Seni Budaya",
                        isi: arguments['senbud_6'] ?? '',
                        textSize: 12,
                        centerText: true,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
