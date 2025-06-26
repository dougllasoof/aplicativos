   import 'package:dgaplication/views/soma.dart';
import 'package:flutter/material.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
           colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
           useMaterial3: true,
         ),
         home: Soma(),
       );
     }
   }