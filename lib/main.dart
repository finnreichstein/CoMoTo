// Importing used packages and frameworks
import 'package:flutter/material.dart';
import 'homepage.dart';

// The main function of the application
void main() {
  runApp(MyApp());
}

// MyApp is a stateless widget that represents the root of the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This method builds the widget tree for the application
  @override
  Widget build(BuildContext context) {

    // MaterialApp is the root widget of the application
    return MaterialApp(

      // Code disables the debug banner
      debugShowCheckedModeBanner: false,

      // Sets HomePage as the default route of the application
      home: HomePage(),
      
      // Sets the primary color of the application's theme
      theme: ThemeData(primaryColor: Colors.white), 
    );
  }
}
