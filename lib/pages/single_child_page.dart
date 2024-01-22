import 'package:flutter/material.dart';

class SingleChildPage extends StatelessWidget {
  const SingleChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Single Child"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 100,color: Colors.red,),
            Container(height: 100,color: Colors.green,),
            Container(height: 100,color: Colors.yellow,),
            Container(height: 100,color: Colors.blue,),
            Container(height: 100,color: Colors.black,),
            Container(height: 100,color: Colors.red,),
            Container(height: 100,color: Colors.green,),
            Container(height: 100,color: Colors.yellow,),
            Container(height: 100,color: Colors.blue,),
            Container(height: 100,color: Colors.black,),
            Container(height: 100,color: Colors.red,),
            Container(height: 100,color: Colors.green,),
            Container(height: 100,color: Colors.yellow,),
            Container(height: 100,color: Colors.blue,),
            Container(height: 100,color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
