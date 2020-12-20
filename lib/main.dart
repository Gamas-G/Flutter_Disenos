import 'package:flutter/material.dart';

import 'package:disenos/src/page/basico_page.dart';
import 'package:disenos/src/page/scroll_page.dart';
import 'package:disenos/src/page/botones_page.dart';
// import 'package:flutter/services.dart';



void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //Esto sirve para cambiar el color donde contiene los componentes de la hora y echa del telefono
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.transparent
    // ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Diseño',
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },
    );
  }
}