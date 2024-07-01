import 'package:demointerview/screen/homepage_Screen/homepage.dart';
import 'package:demointerview/screen/navigation_screen/widgets/buttom_navigation_widgets.dart';
import 'package:demointerview/screen/second_screen/secondview.dart';
import 'package:demointerview/screen/sendmoney_screen/sendmoney.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChaneNotifer = ValueNotifier(0);

class ButtomnavigationOptions extends StatelessWidget {
const  ButtomnavigationOptions({super.key});

  final _pages = const [
    HomePage(),
    Secondview(),
    Sendmoney(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: indexChaneNotifer,
        builder: (context,int index, _) {
          return _pages[index];
        },
      ),),
      bottomNavigationBar: const ButtomNavigationWidgets(),
    );
  }
}
