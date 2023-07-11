import 'package:flutter/material.dart';
import 'package:portifolio/widgets/appBar.dart';
import 'package:portifolio/widgets/text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Abaout extends StatefulWidget {
  const Abaout({super.key});

  @override
  State<Abaout> createState() => _AbaoutState();
}

class _AbaoutState extends State<Abaout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              titulo(context, 'About me?'),
              texto(context,
                  "My name is Samuel, I'm 20 years old and I'm passionate about technology. I am currently working as an intern at the Municipal Secretariat of Culture of São José do Rio Preto and I am studying the sixth semester of the Systems Analysis and Development course at Fatec Rio Preto, expected to be completed in Dec/2023.I have knowledge in C, C# (Dotnet), Python, HTML/CSS, JS, SQL Server, UX/UI, Linux (Server and Desktop), Dart (Flutter) and Computer Networks and Ruby."),
              const SizedBox(
                height: 50,
              ),
              subtitulo("Social media ⬇️"),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        launchUrlString('https://github.com/SamuelScavassa'),
                    child: Image.asset(
                      'images/github.png',
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => launchUrlString(
                        'https://www.hackerrank.com/melegattisamuel?hr_r=1'),
                    child: Image.asset(
                      'images/hh.png',
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => launchUrlString(
                        'https://www.linkedin.com/in/samuel-melegatti-scavassa-272006210/'),
                    child: Image.asset(
                      'images/lk.png',
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Develop with Flutter',
                textAlign: TextAlign.end,
              )
            ],
          ),
        ),
      ),
    );
  }
}
