import 'package:flutter/material.dart';
import 'package:jsskos_app/screens/SideNav_bar.dart';

class ExamReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const SideNavBar(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 214, 84, 67),
          centerTitle: true,
          title: Text('REGISTER FOR YOUR UPCOMING EXAM!!'),
        ),
        backgroundColor: Color.fromARGB(255, 97, 242, 223),
      );
}
