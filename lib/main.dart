import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/screen/Homepage.dart';
import 'package:wigets_and_layouts/screen/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wigets_and_layouts/util/routes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        textTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: false
        ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark
      // ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>Homepage(),
        MyRoutes.loginRoute:(context)=>LoginPage()
      }
    );  
    }
}