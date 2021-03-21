import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }

  Future getData() async {
    var url = 'http://aluthclass.camileonit.me/get.php';
    http.Response response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    print(data.toString());
  }
}
