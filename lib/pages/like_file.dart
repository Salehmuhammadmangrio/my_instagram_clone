import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.deepPurple,
      child: const Center(
        child: Text("Like",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
    );
  }
}
