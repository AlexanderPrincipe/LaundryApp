import 'package:disenio_1/src/pages/basico_pages.dart';
import 'package:disenio_1/src/pages/botones_page.dart';
import 'package:disenio_1/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
    //  statusBarColor: Colors.transparent
    //) );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },
    );
  }
}