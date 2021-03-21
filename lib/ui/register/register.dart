import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Student"),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/home',
                  );
                },
              ),
              ElevatedButton(
                child: Text("Tutor"),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/profile',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
