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
    print([usernameController.text, passwordController.text]);
    final queryParam = {
      'username': usernameController.text,
      'password': passwordController.text,
    };
    print(queryParam);
    final uri =
        Uri.https('www.ayo-wisuda.site', '/api/gedmi/login', queryParam);
    final response = await http.post(uri);
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setInt('id', data['id'] ?? 0);
      prefs.setString('username', data['username'] ?? 0);
      prefs.setString('password', data['password'] ?? 0);
      prefs.setString('role', data['role'] ?? 0);
      Navigator.pushNamed(context, '/teacher-page');
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
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
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
    children: <Widget>[
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
        "Untuk Mendapatkan Username dan Password Silahkan Hubungi Pihak Sekolah",
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
      Padding(padding: EdgeInsets.only(top: 12.0)),
      TextFormField(
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
        Navigator.pushNamed(context, '/student-page');
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
