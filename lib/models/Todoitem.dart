import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/utils/hex.dart';

class TodoItem {
  final String title, description;
  final Color colorIcon, colorBack;
  final int id;
  final IconData icon;
  TodoItem(
      {required this.id,
      required this.title,
      required this.description,
      required this.colorIcon,
      required this.colorBack,
      required this.icon});
}

List<TodoItem> todoItems = [
  TodoItem(
      colorBack: HexColor('F79CB7'),
      colorIcon: HexColor('FFF8E5'),
      description: 'First description',
      title: 'First title',
      id: 1,
      icon: Icons.people),
  TodoItem(
      colorBack: HexColor('F1EEFE'),
      colorIcon: HexColor('A69FFE'),
      description: 'Second description',
      title: 'Second title',
      id: 2,
      icon: Icons.ac_unit),
  TodoItem(
    colorBack: HexColor('D8E4FB'),
    colorIcon: HexColor('93AFE6'),
    description: 'Third description',
    title: 'Third title',
    id: 1,
    icon: Icons.app_settings_alt_outlined,
  )
];
