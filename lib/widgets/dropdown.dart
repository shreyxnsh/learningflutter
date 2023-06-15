import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DropDownListWidget extends StatefulWidget {
  const DropDownListWidget({super.key});

  @override
  State<DropDownListWidget> createState() => _DropDownListWidgetState();
}

class _DropDownListWidgetState extends State<DropDownListWidget> {

  String selectedValue = 'Orange'; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton(
              items: <String>[
                'Orange',
                'Apple',
                'Banana',
                'Mango',
                'Grapes'
              ].map<DropdownMenuItem<String>(String value){
                return DropdownMenuItem(
                  value: value
                  child: Text)())
              }, 
              
              onChanged: (value) {  },
            ),
          )
        ],
      ),
    );
  }
}