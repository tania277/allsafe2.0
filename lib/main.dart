import 'package:allsafe/src/pages/pages.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'allsafe',
      initialRoute: '/usuarios',
      routes: {
        '/login': (_) => LoginPage(),
        '/usuarios':(_)=>HomePageUser()
      },
    );
  }
}
