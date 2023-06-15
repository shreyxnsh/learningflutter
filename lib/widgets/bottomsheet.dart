import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet '),
      ),
      body: Center(child: ElevatedButton(
        child: Text('Show Bottom Sheet'), 
        onPressed: (){
          showModalBottomSheet(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
            ),
            context: context, builder: (context){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Shreyansh'),
                ),
                ListTile(
                  title: Text('Mango'),
                  subtitle: Text('Jyotsna'),
                ),
                ListTile(
                  title: Text('Watermelon'),
                  subtitle: Text('Suyash'),
                ),
                ListTile(
                  title: Text('Melon'),
                  subtitle: Text('Harsh'),
                )
              ],
            );
          });
        },
        )
        ),
    );
  }
}