import 'package:flutter/material.dart';

class SingleChildPage extends StatelessWidget {
  const SingleChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Child"),),
      body: Center(
        child: Column(
          children: [
            Container(height: 100,color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
