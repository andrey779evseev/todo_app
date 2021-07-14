import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar(
      {required this.currentIndex, required this.handlePage, Key? key})
      : super(key: key);

  final int currentIndex;
  final handlePage;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      enableFeedback: false,
      iconSize: 22,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: this.currentIndex,
      onTap: this.handlePage,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category_rounded,
              color: Colors.black,
            ),
            label: 'categories',
            activeIcon: Container(
              height: 40,
              width: 40,
              child: Icon(
                Icons.category_rounded,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list_rounded,
              color: Colors.black,
            ),
            label: 'list',
            activeIcon: Container(
              //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
              height: 40,
              width: 40,
              child: Icon(
                Icons.view_list_rounded,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_rounded,
              color: Colors.black,
            ),
            label: 'settings',
            activeIcon: Container(
              //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
              height: 40,
              width: 40,
              child: Icon(
                Icons.settings_rounded,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
