import 'package:flutter/material.dart';
import 'package:portifolio/controllers/navigationController.dart';
import 'package:portifolio/widgets/appBar.dart';
import 'package:portifolio/widgets/text.dart';

class Qualification extends StatefulWidget {
  const Qualification({super.key});

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          titulo(context, 'Academic education'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: subtitulo(
                  "I'm studying the sixth semester of the Systems Analysis and Development course at FATEC RIO PRETO."),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          subtitulo("See a little more about my training ⬇️"),
          SizedBox(
            height: 50,
          ),
          subtitulo("Curriculum"),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => abrirUrl(
                "https://docs.google.com/document/d/1wtdnAD87S9kG0XDfuM-9kPSJD0nsR9D-Pu2QaA7jKjE/edit"),
            child: Icon(
              Icons.edit_document,
              color: Colors.white,
              size: 80,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          subtitulo("Certificates"),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => abrirUrl(
                "https://drive.google.com/drive/folders/1xAY1KgSg7V9PzL3XwfF4xsrrX_tcfsgn"),
            child: Icon(
              Icons.picture_as_pdf_outlined,
              color: Colors.white,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
