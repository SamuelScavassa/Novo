import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portifolio/controllers/navigationController.dart';
import 'dart:convert' as convert;
import 'package:url_launcher/url_launcher.dart';
import 'package:portifolio/widgets/appBar.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  Future<List<dynamic>> fetchGitHubRepos() async {
    var response = await http
        .get(Uri.parse('https://api.github.com/users/samuelscavassa/repos'));

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      throw Exception('Failed to fetch GitHub repos');
    }
  }

  void openURL(String url) async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.black,
      body: FutureBuilder<List<dynamic>>(
        future: fetchGitHubRepos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar os dados'),
            );
          } else if (snapshot.hasData) {
            List<dynamic> repositorios = snapshot.data!;
            return ListView.builder(
              itemCount: repositorios.length,
              itemBuilder: (BuildContext context, int index) {
                var repo = repositorios[index];
                return ListTile(
                  title: GestureDetector(
                    onTap: () => abrirUrl(repo["html_url"]),
                    child: Container(
                        padding: EdgeInsets.all(15),
                        child: Center(
                            child: Column(
                          children: [
                            Text(repo['name'].toString().toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            Text(repo['description'] ?? 'Sem descrição',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ))),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text('Nenhum dado disponível'),
            );
          }
        },
      ),
    );
  }
}
