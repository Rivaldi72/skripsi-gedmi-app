import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skripsi/constant.dart';
import 'package:skripsi/shared/theme.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  Future<void> login(context) async {
    final queryParam = {
      'username': usernameController.text,
      'password': passwordController.text,
    };
    final uri =
        Uri.https('www.ayo-wisuda.site', '/api/gedmi/login', queryParam);
    final response = await http.post(uri);
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      var role = data['role'] ?? '';
      var pesan = data['pesan'] ?? '';
      if (pesan != '') {
        final snackBar = SnackBar(
          content: Text(pesan.toString()),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt('id', data['id'] ?? 0);
        prefs.setString('username', data['username'] ?? '');
        prefs.setString('role', data['role'] ?? '');
        prefs.setString('api_token', data['api_token'] ?? '');
        if (data.containsKey('biodata')) {
          prefs.setString('nis', data['biodata']['nis'] ?? '');
          prefs.setString('nama', data['biodata']['nama'] ?? '');
          prefs.setString(
              'tempat_lahir', data['biodata']['tempat_lahir'] ?? '');
          prefs.setString(
              'tanggal_lahir', data['biodata']['tanggal_lahir'] ?? '');
          prefs.setString('tahun_masuk', data['biodata']['tahun_masuk'] ?? '');
          prefs.setString(
              'jenis_kelamin', data['biodata']['jenis_kelamin'] ?? '');
          prefs.setString('agama', data['biodata']['agama'] ?? '');
          prefs.setString('alamat', data['biodata']['alamat'] ?? '');
          prefs.setString('kelas', data['biodata']['kelas'] ?? '');
          prefs.setString(
              'matematika_1', data['biodata']['matematika_1'] ?? '');
          prefs.setString('bindo_1', data['biodata']['bindo_1'] ?? '');
          prefs.setString('bing_1', data['biodata']['bing_1'] ?? '');
          prefs.setString('ipa_1', data['biodata']['ipa_1'] ?? '');
          prefs.setString('ips_1', data['biodata']['ips_1'] ?? '');
          prefs.setString('pkn_1', data['biodata']['pkn_1'] ?? '');
          prefs.setString('agama_1', data['biodata']['agama_1'] ?? '');
          prefs.setString('penjas_1', data['biodata']['penjas_1'] ?? '');
          prefs.setString('senbud_1', data['biodata']['senbud_1'] ?? '');
          prefs.setString(
              'matematika_2', data['biodata']['matematika_2'] ?? '');
          prefs.setString('bindo_2', data['biodata']['bindo_2'] ?? '');
          prefs.setString('bing_2', data['biodata']['bing_2'] ?? '');
          prefs.setString('ipa_2', data['biodata']['ipa_2'] ?? '');
          prefs.setString('ips_2', data['biodata']['ips_2'] ?? '');
          prefs.setString('pkn_2', data['biodata']['pkn_2'] ?? '');
          prefs.setString('agama_2', data['biodata']['agama_2'] ?? '');
          prefs.setString('penjas_2', data['biodata']['penjas_2'] ?? '');
          prefs.setString('senbud_2', data['biodata']['senbud_2'] ?? '');
          prefs.setString(
              'matematika_3', data['biodata']['matematika_3'] ?? '');
          prefs.setString('bindo_3', data['biodata']['bindo_3'] ?? '');
          prefs.setString('bing_3', data['biodata']['bing_3'] ?? '');
          prefs.setString('ipa_3', data['biodata']['ipa_3'] ?? '');
          prefs.setString('ips_3', data['biodata']['ips_3'] ?? '');
          prefs.setString('pkn_3', data['biodata']['pkn_3'] ?? '');
          prefs.setString('agama_3', data['biodata']['agama_3'] ?? '');
          prefs.setString('penjas_3', data['biodata']['penjas_3'] ?? '');
          prefs.setString('senbud_3', data['biodata']['senbud_3'] ?? '');
          prefs.setString(
              'matematika_4', data['biodata']['matematika_4'] ?? '');
          prefs.setString('bindo_4', data['biodata']['bindo_4'] ?? '');
          prefs.setString('bing_4', data['biodata']['bing_4'] ?? '');
          prefs.setString('ipa_4', data['biodata']['ipa_4'] ?? '');
          prefs.setString('ips_4', data['biodata']['ips_4'] ?? '');
          prefs.setString('pkn_4', data['biodata']['pkn_4'] ?? '');
          prefs.setString('agama_4', data['biodata']['agama_4'] ?? '');
          prefs.setString('penjas_4', data['biodata']['penjas_4'] ?? '');
          prefs.setString('senbud_4', data['biodata']['senbud_4'] ?? '');
          prefs.setString(
              'matematika_5', data['biodata']['matematika_5'] ?? '');
          prefs.setString('bindo_5', data['biodata']['bindo_5'] ?? '');
          prefs.setString('bing_5', data['biodata']['bing_5'] ?? '');
          prefs.setString('ipa_5', data['biodata']['ipa_5'] ?? '');
          prefs.setString('ips_5', data['biodata']['ips_5'] ?? '');
          prefs.setString('pkn_5', data['biodata']['pkn_5'] ?? '');
          prefs.setString('agama_5', data['biodata']['agama_5'] ?? '');
          prefs.setString('penjas_5', data['biodata']['penjas_5'] ?? '');
          prefs.setString('senbud_5', data['biodata']['senbud_5'] ?? '');
          prefs.setString(
              'matematika_6', data['biodata']['matematika_6'] ?? '');
          prefs.setString('bindo_6', data['biodata']['bindo_6'] ?? '');
          prefs.setString('bing_6', data['biodata']['bing_6'] ?? '');
          prefs.setString('ipa_6', data['biodata']['ipa_6'] ?? '');
          prefs.setString('ips_6', data['biodata']['ips_6'] ?? '');
          prefs.setString('pkn_6', data['biodata']['pkn_6'] ?? '');
          prefs.setString('agama_6', data['biodata']['agama_6'] ?? '');
          prefs.setString('penjas_6', data['biodata']['penjas_6'] ?? '');
          prefs.setString('senbud_6', data['biodata']['senbud_6'] ?? '');
        }

        if (role == 'guru' || role == 'admin') {
          Navigator.pushNamed(context, '/teacher-page');
        } else if (role == 'siswa') {
          Navigator.pushNamed(context, '/student-page');
        } else {
          final snackBar = SnackBar(
            content: const Text(
                'Kepala sekolah hanya bisa login melalui aplikasi WEB'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    } else {
      throw Exception('Jaringan Bermasalah');
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconLogin() {
    return Image.asset(
      "assets/images/logo.png",
      width: 200.0,
      height: 200.0,
    );
  }

  Widget _titleDescription() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Untuk Mendapatkan Username dan Password Silahkan Hubungi Admin",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 50.0)),
        TextFormField(
          controller: usernameController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 35),
      child: TextButton(
        onPressed: () {
          login(context);
        },
        style: TextButton.styleFrom(
          backgroundColor: kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          'LOGIN',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
