import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowsColumns extends StatelessWidget {
  const RowsColumns({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

        return Scaffold(
          appBar: AppBar(title: Text('Rows and Columns'),),
          body: Container(
            height: h,
            width: w,
            color: Colors.yellow,

            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                  child: Row(
                    children: [
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}