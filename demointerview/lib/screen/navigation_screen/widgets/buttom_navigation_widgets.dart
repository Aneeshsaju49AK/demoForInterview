import 'package:demointerview/screen/navigation_screen/buttomnavigation.dart';
import 'package:flutter/material.dart';

class ButtomNavigationWidgets extends StatelessWidget {
  const ButtomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChaneNotifer,
      builder: (context, index, _) {
        return BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            indexChaneNotifer.value = value;
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          selectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          unselectedIconTheme:const IconThemeData(
            color: Colors.blueGrey,
          ),
          items: const[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.watch,
              ),
              label: "view",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.money,
              ),
              label: "money",
            )
          ],
        );
      },
    );
  }
}
