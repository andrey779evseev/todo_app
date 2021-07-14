import 'package:flutter/material.dart';
import 'package:todo_app/screens/categories/categories_screen.dart';
import 'package:todo_app/screens/list/list_screen.dart';
import 'package:todo_app/screens/settings/settings_screen.dart';

class Body extends StatefulWidget {
  const Body({required this.currenPageIndex, Key? key}) : super(key: key);

  final int currenPageIndex;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Widget> _children = [CategoriesScreen(), ListScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _children[widget.currenPageIndex],
    );
  }
}
