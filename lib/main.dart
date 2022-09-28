import 'package:flutter/material.dart';
import 'package:skripsi/ui/pages/detail_teacher.dart';
import 'package:skripsi/ui/pages/informasi_page.dart';
import 'package:skripsi/ui/pages/kelas_page.dart';
import 'package:skripsi/ui/pages/mapel.dart';
import 'package:skripsi/ui/pages/splash_page.dart';
import 'package:skripsi/ui/pages/login_page.dart';
import 'package:skripsi/ui/pages/teacher_page.dart';
import 'package:skripsi/ui/pages/student_page.dart';
import 'package:skripsi/ui/pages/profil_page.dart';
import 'package:skripsi/ui/pages/test_screen.dart';
import 'package:skripsi/ui/pages/visi_page.dart';
import 'package:skripsi/ui/pages/headmaster_page.dart';
import 'package:skripsi/ui/pages/school_identity_page.dart';
import 'package:skripsi/ui/pages/contact_page.dart';
import 'package:skripsi/ui/pages/fasility_page.dart';
import 'package:skripsi/ui/pages/peta_page.dart';
import 'package:skripsi/ui/pages/detail_student.dart';
import 'package:skripsi/ui/pages/detail_teacher.dart';
import 'package:skripsi/ui/pages/informasi_page.dart';
import 'package:skripsi/ui/pages/kelas_page.dart';
import 'package:skripsi/ui/pages/detail_student2.dart';
import 'package:skripsi/ui/pages/detail_student3.dart';
import 'package:skripsi/ui/pages/test_screen.dart';
import 'package:skripsi/ui/pages/identitas_teacher.dart';
import 'package:skripsi/ui/pages/identitas_student.dart';
import 'package:skripsi/ui/pages/mapel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const Login(),
        '/teacher-page': (context) => TeacherPage(),
        '/student-page': (context) => StudentPage(),
        '/profil': (context) => const Profil(),
        '/visi-page': (context) => const Visi(),
        '/headmaster-page': (context) => const HeadMasterPage(),
        '/school-identity': (context) => const SchoolIdentityPage(),
        '/contact-page': (context) => const ContactPage(),
        '/fasility-page': (context) => const FasilityPage(),
        '/peta-page': (context) => const PetaPage(),
        '/detail-student-page': (context) => DetailStudent(),
        '/detail-teacher-page': (context) => DetailTeacher(),
        '/informasi-page': (context) => const InformasiPage(),
        '/kelas-page': (context) => const KelasPage(),
        '/detail-student-page2': (context) => DetailStudent2(),
        '/detail-student-page3': (context) => DetailStudent3(),
        '/testscreen': (context) => const TestScreen(),
        '/identitas-teacher': (context) => const IdentitasTeacher(),
        '/identitas-student': (context) => IdentitasStudent(),
        '/mapel': (context) => const MataPelajaran(),
      },
    );
  }
}
