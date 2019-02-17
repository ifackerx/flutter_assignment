import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("go to second"),
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
        ),
      ),
    );
  }
}