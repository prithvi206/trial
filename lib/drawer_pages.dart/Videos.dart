import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Videos'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 214, 84, 67)),
    );
    ;
  }
}
