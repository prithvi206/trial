import 'package:flutter/material.dart';

// ignore: camel_case_types
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 214, 84, 67),
            centerTitle: true,
            title: const Text('SETTINGS!!')),
        backgroundColor: Color.fromARGB(255, 97, 242, 223),
        body: const Center(child: Text('settings...')));
    //floatingActionButton: FloatingActionButton(onPressed: () async {
    //await _auth.signOut()
  }
}
