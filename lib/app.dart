import 'package:flutter/material.dart';
import 'package:portifolio/views/about.dart';
import 'package:portifolio/views/index.dart';
import 'package:portifolio/views/projects.dart';
import 'package:portifolio/views/qualification.dart';
import 'package:portifolio/widgets/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: tema(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/index': (context) => Index(),
        '/projects': (context) => Projects(),
        '/abaout': (context) => Abaout(),
        '/qualification': (context) => Qualification()
      },
      initialRoute: '/index',
    );
  }
}
