import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
          ),
          body: MyLoginForm(),
        ));
  }
}

class MyLoginForm extends StatefulWidget {
  @override
  _MyLoginFormState createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // TextFormField(
            //   decoration: InputDecoration(labelText: 'Enter your username'),
            // ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your password'),
            ),
          ]),
    );
  }
}
