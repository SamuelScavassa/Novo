import 'package:flutter/material.dart';
import 'package:portifolio/widgets/appBar.dart';
import '../widgets/text.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(50),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('images/foto.jpg'))),
              height: 300,
              width: 300,
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: titulo(
                  context,
                    'Full-Stack Developer, Linux enthusiast and Coffe lover.')),
            Container(
              child:
                  subtitulo('Welcome to my portfolio, feel free to explore ❤️'),
            )
          ]),
        ),
      ),
    );
  }
}
