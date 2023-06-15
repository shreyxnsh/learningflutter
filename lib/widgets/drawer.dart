import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //to initialise a drawer you need to add drawer property in scaffold
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                padding: EdgeInsets.all(10) ,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://scontent-bom1-1.xx.fbcdn.net/v/t1.18169-9/74989_194177764040090_2037247141_n.jpg?stp=dst-jpg_p526x296&_nc_cat=106&ccb=1-7&_nc_sid=cdbe9c&_nc_ohc=9BToVqLMs-IAX9Fuin2&_nc_ht=scontent-bom1-1.xx&oh=00_AfAaXM19aNdCvYBrQs-VUcoVTMXrzrpp3hn-0E9tv-k80w&oe=64B24CF9'),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Mary Jane', style: TextStyle(fontSize: 20),),
                        Text('maryjane69@gmail.com'),
                      ],
                    )
                  ],
                ),
              ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My files'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              Divider(), 
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Drawer'),
      ),
      body: Container(
        child: Center(child: 
        Text('Hey there'),
      ),
    )
    );
  }
}