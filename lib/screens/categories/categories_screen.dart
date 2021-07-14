import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/models/Todoitem.dart';
import 'package:todo_app/utils/hex.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: HexColor('FBFBFB'),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildHeader(),
              Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.fromLTRB(21, 45, 21, 45),
                    itemCount: todoItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (context, index) => buildCards(index)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCards(int index) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildIcon(index),
          Container(
            height: 36,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(todoItems[index].title,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: HexColor('353945')),
                    )),
                Text(
                  "5 tasks",
                  style: TextStyle(
                      fontSize: 9, letterSpacing: 2, color: HexColor('BEBEC2')),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: HexColor('E5E5E5').withOpacity(0.75),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }

  Container buildIcon(int index) {
    return Container(
      width: 60,
      height: 60,
      child: Icon(
        todoItems[index].icon,
        size: 20,
        color: todoItems[index].colorIcon,
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: todoItems[index].colorBack),
    );
  }

  Container buildHeader() {
    return Container(
      height: 55,
      margin: EdgeInsets.fromLTRB(21, 50, 21, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hello Andrew',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: HexColor('434B5D'),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            '13 items not completed',
            style: TextStyle(
              color: HexColor('BFC1C2'),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
