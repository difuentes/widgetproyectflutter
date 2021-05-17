import 'package:flutter/material.dart';

//import de otras paginas 
import 'package:widgetproyectflutter/src/pages/home_page.dart';
import 'package:widgetproyectflutter/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget APP ',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}