import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold is the starting point of your app
    // it is like a roof to a home 
    return Scaffold(
      // scaffold contains the appbar, body, etc.
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Container and Sized boxes'),
      ),
      body: Center(
        child: SizedBox(
           height: 50,
           width: 50,
           child: Text('Hello'),
        ),
      ),

    );
  }
}