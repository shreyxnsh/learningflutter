import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Snackbar'),
      ),
      body: Container(
        child: Center(
        child: ElevatedButton(
          onPressed: (){
            final snackBar = SnackBar(
              action: SnackBarAction(label: 'Undo', textColor: Colors.blue, onPressed: (){}),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              behavior: SnackBarBehavior.floating,
              duration: Duration(milliseconds: 3000),
              content: Text('THis is a snackbar'));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show snackbar')),),
      ),
      
    );
  }
}