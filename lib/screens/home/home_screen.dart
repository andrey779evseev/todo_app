import 'package:flutter/material.dart';
import 'package:todo_app/components/body.dart';
import 'package:todo_app/components/nav_menu.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  void handlePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(currenPageIndex: currentIndex,),
      bottomNavigationBar: MenuBar(
        handlePage: handlePage, 
        currentIndex: currentIndex,
        ),
    );
  }

}
