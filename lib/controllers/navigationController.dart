import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void navProjects(BuildContext context) {
  Navigator.of(context).popAndPushNamed('/projects');
}

void navAbaout(BuildContext context) {
  Navigator.of(context).popAndPushNamed('/abaout');
}

void navQualificaiton(BuildContext context) {
  Navigator.of(context).popAndPushNamed('/qualification');
}

void index(BuildContext context) {
  Navigator.of(context).popAndPushNamed('/index');
}

void abrirUrl(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Não foi possível abrir a URL: $url';
  }
}
