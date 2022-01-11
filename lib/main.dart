import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get http => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('peticion del api'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('click aqui'),
            onPressed: () async {
              var url = Uri.http('127.0.0.1:8000', '/exam-ext/automoviles', {});

              var response = await http.get(url);
              if (response.statusCode == 200) {
                print(response.body);
              } else {
                print("Request failed with status");
              }
            },
          ),
        ),
      ),
    );
  }
}
