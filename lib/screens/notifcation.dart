import 'package:flutter/material.dart';

// ignore: camel_case_types
class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 214, 84, 67),
          centerTitle: true,
          title: const Text('IMPORTANT NOTIFICATIONS!'),
        ),
        backgroundColor: Color.fromARGB(255, 97, 242, 223),
        body: const Center(child: Text('updates...')));

    //floatingActionButton: FloatingActionButton(onPressed: () async {
    //await _auth.signOut()
  }
}
