import 'package:flutter/material.dart';
import 'package:flutter_hive/tecorb.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'boxes.dart';
import 'my_home_page.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TecorbAdapter());
  boxTecorb = await Hive.openBox<Tecorb>('tecorbBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}
