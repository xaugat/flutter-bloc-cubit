import 'package:flutter/material.dart';
import 'package:flutterbloc/data/repository.dart';
import 'package:flutterbloc/presentation/views/homepage.dart';
import 'package:flutterbloc/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
     
      onGenerateRoute: AppRouter().generateRoute,
      initialRoute:'/',
      // home: const MyHomePage(title: '404 not found'),
    );
  }
}


