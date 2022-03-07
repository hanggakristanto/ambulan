import 'package:ambulan/pages/home/detail_dua.dart';
import 'package:ambulan/pages/home/form_page.dart';
import 'package:ambulan/pages/home/stack_page.dart';
import 'package:flutter/material.dart';
import 'package:ambulan/pages/splash_page.dart';
import 'package:ambulan/pages/home/main_page.dart';
import 'package:ambulan/pages/home/detail_page.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => MainPage(),
        // '/edit-profile': (context) => EditProfilePage(),
        '/detail': (context) => DetailPage(),
        '/detaildua': (context) => DetailDua(),
        '/form': (context) => FormPage(),
        '/stack': (context) => StackPage(),
      },
    );
  }
}
