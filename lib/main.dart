import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:psnrz_app/screens/Home.dart';
import 'package:psnrz_app/screens/StartPage.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "FlutterFire App",
    home: HomePage(),
  ));
}