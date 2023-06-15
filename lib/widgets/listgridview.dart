import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListGridView extends StatelessWidget {
    ListGridView({super.key});

  List<String> fruits = ['Orange', 'Apple', 'Mango'];

  // map is like a dictionary, it works with a key value pair
  Map fruits_person = {
    
    'fruits' : ['Orange', 'Apple', 'Mango'],
    'names' : ['Shrey', 'Jyotsna', 'Akash']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 8,

      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(
        //           Icons.girl_rounded
        //         ),
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),

        //       ),
        //     );
        //   },
        // ),

        child: 
          GridView.builder(
            itemCount: fruits.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
            return Card(
              child: Center(
                child: Text(fruits[index]),
                
              ),
            );
          }
          ),
          
        ),
      );
  }
}