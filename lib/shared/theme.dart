import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kPrimaryColor = const Color(0xff6DC4DB);
Color kBlackColor = const Color(0xff1F1449);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGrayColor = const Color(0xff9698A9);
Color kGreenColor = const Color(0xff8EC3AE);
Color kBlueColor = const Color(0xff85C2C7);
Color kBackgroundColor = const Color(0xffFAFAFA);
Color kInactiveColor = const Color(0xffDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kPurpleColor = Color.fromARGB(255, 37, 32, 70);

TextStyle blackTextStyle = GoogleFonts.roboto(
  color: kBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.roboto(
  color: kWhiteColor,
);

TextStyle grayTextStyle = GoogleFonts.roboto(
  color: kGrayColor,
);

TextStyle greenTextStyle = GoogleFonts.roboto(
  color: kGreenColor,
);

TextStyle redTextStyle = GoogleFonts.roboto(
  color: kBlueColor,
);

TextStyle purpleTextStyle = GoogleFonts.roboto(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
