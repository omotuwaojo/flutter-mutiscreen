import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => const HomeRoute(),
    '/second': (context) => const SecondRoute(),
  }));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LOGIN TO YOUR ACCOUT"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(children: <Widget>[
            RaisedButton(
                child: const Text("CLICK HERE PLEASE"),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                }),
          ]),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTER ACCOUNT"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: RaisedButton(
        color: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          "GO BACK",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      )),
    );
  }
}
