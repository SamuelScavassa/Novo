import 'package:flutter/material.dart';
import 'package:portifolio/controllers/navigationController.dart';
import 'package:portifolio/widgets/text.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: GestureDetector(
              child: textoCabecalho(context, 'Home'),
              onTap: () => index(context),
            ),
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: GestureDetector(
              onTap: () => navProjects(context),
              child: textoCabecalho(context, 'Projects'),
            ),
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: GestureDetector(
              onTap: () => navQualificaiton(context),
              child: textoCabecalho(context, 'Qualification'),
            ),
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: GestureDetector(
              onTap: () => navAbaout(context),
              child: textoCabecalho(context, 'About'),
            ),
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    ),
  );
}
