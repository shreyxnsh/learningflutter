import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      body: Center(
        child: ElevatedButton(child: Text('Show Alert'), onPressed: (){
        _showMyDialog(context); 
        },),
      ),
    );
  }
}

// function for alert dialog
Future<void> _showMyDialog (BuildContext context) async{
  return showDialog(
    context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('This is an alert dialog'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('This is a demo'),
              Text('This is another ')
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text('Approve')),
          TextButton(onPressed: (){
            // to remove alert dialog
            Navigator.pop(context);
          }, child: Text('Cancel'))
        ],
      );
    });

}