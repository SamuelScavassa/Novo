import 'package:flutter/material.dart';

Text textoCabecalho(BuildContext context, String texto) {
  var dispo = MediaQuery.of(context);
  return Text(
    texto,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: dispo.textScaleFactor * 18, fontFamily: 'Arial'),
  );
}

Widget titulo(BuildContext context, String text) {
  var dispo = MediaQuery.of(context);
  return Container(
    padding: EdgeInsets.all(10),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: dispo.textScaleFactor * 50, fontFamily: 'Arial'),
    ),
  );
}

Text subtitulo(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(fontSize: 30, fontFamily: 'Arial'),
  );
}

Widget texto(BuildContext context, String text) {
  return Center(
    child: Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontFamily: 'Arial'),
      ),
    ),
  );
}
