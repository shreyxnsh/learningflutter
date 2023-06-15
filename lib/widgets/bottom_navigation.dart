import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learningflutter/widgets/alert.dart';
import 'package:learningflutter/widgets/bottomsheet.dart';
import 'package:learningflutter/widgets/dimissible.dart';
import 'package:learningflutter/widgets/dropdown.dart';
import 'package:learningflutter/widgets/snackbar.dart';


class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

int selectedindex = 0;

PageController pageController = PageController();

void onItemTapped(int index){
  setState(() {
    selectedindex = index;
  });
  pageController.jumpToPage(index);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Bar'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          DropDownListWidget(),
          DismissibleWidget(),
          BottomSheetWidget(),
          SnackBarWidget()
        ],
      ),
      bottomNavigationBar: 
      BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:   Icon
          (Icons.home,
          ),
          label: 'Home'),
          
        BottomNavigationBarItem(
          icon:   Icon
          (Icons.search,
          ),
          label: 'Search'),  

        BottomNavigationBarItem(
          icon:   Icon
          (Icons.person,
          ),
          label: 'Profile'),

        BottomNavigationBarItem(
          icon:   Icon
          (Icons.add ,
          ),
          label: 'Add')
      ],
      currentIndex: selectedindex, 
      selectedItemColor: Colors.blue, 
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped ,
      ),
    );
  }
}