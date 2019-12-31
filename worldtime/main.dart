import 'package:basic/pages/choose_location.dart';
import 'package:basic/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:basic/pages/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
