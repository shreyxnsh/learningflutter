import "package:flutter/material.dart";
import "package:learningflutter/widgets/container_sized.dart";
import "package:learningflutter/widgets/listgridview.dart";
import "package:learningflutter/widgets/rowscol.dart";
import "package:learningflutter/widgets/snackbar.dart";

void main() {
  runApp(new MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple
      ),
      home: SnackBarWidget (),
    );
  }
}