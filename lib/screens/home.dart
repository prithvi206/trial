//GRID HOMEPAGE
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jsskos_app/grid_contents/exam_reg.dart';
import 'package:jsskos_app/grid_contents/exam_res.dart';
import 'package:jsskos_app/grid_contents/fees_pay.dart';
import 'package:jsskos_app/grid_contents/grade_entry.dart';
import 'package:jsskos_app/grid_contents/query.dart';
import 'package:jsskos_app/grid_contents/sub_sel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("JSSKOS APP"),
          backgroundColor: Color.fromARGB(255, 214, 84, 67),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Colors.black,
              height: 4.0,
            ),
          )),
      backgroundColor: Color.fromARGB(255, 97, 242, 223),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SubSelec()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables

                    //SUBJECT...
                    children: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/subj.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        "Subject Selection",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExamReg()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 35, 1, 59),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables

                    //EXAM...
                    children: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/exam.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        "Exam Registration",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GradeEntr()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 49, 21, 233),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables

                    //GRADES...
                    children: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/grade.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        "Grades Entry",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FeesPay()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables

                    //FEES...
                    children: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/fees.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        "Fees Payment",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExamRes()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 2, 83, 11),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/result.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        "Exam Results",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Query()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/query.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        "Query",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
