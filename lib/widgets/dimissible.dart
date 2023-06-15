import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {

  List<String> fruits = ['Orange', 'Mango','Watermelonm', 'Grapes', 'Banana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(itemCount: fruits.length, itemBuilder: (context, index){
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction){
            if(direction == DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruit[index]), backgroundColor: Colors.red,));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruit[index]), backgroundColor: Colors.green,));
            }
          },
          key: Key(fruit), 
          background: Container(color: Colors.red,),
          secondaryBackground: Container(color: Colors.green,),
          child: Card(
            child: ListTile(
            title: Text(fruits[index]),
          ),
          )

        );

      },),
    );
  }
}