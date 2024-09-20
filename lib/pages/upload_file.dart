import 'dart:math';

import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  var _width=600.0;
  var _height=300.0;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    double _op=1.0;
    bool _visible=true;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/salehp.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black87,
                  backgroundBlendMode: BlendMode.multiply,
                ),
                width: _width,
                height: _height,
                duration: const Duration(seconds: 2),
              ),
              const SizedBox(height: 10,),
              AnimatedOpacity(
                  opacity: _op,
                  duration: const Duration(milliseconds: 1000),
                child: Container(
                  width: 600,
                  height: 300,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
               child: TextButton(
                   onPressed: (){
                 setState(() {
                   if (_op==1.0){
                     _op =0.0;
                   }
                   else{
                     _op =1.0;
                   }
                   // showDialog(context: context, builder:(context)=>
                   // AlertDialog(
                   //   title: const Text("Accept"),
                   //   content: const Text("Do you accept?"),
                   //   actions: [
                   //     TextButton(onPressed: (){
                   //       ScaffoldMessenger.of(context).showSnackBar(
                   //           const SnackBar(content: Text("You selected \"Yes\""),
                   //             backgroundColor: Colors.deepOrange,
                   //
                   //           ));
                   //     }, child: const Text("Yes")),
                   //
                   //     TextButton(onPressed: (){
                   //       ScaffoldMessenger.of(context).showSnackBar(
                   //           const SnackBar(content: Text("You selected \"No\""),
                   //             backgroundColor: Colors.deepOrange,
                   //
                   //           ));
                   //     }, child: const Text("No"))
                   //   ],
                   // ));

                   // Random random = Random();
                   // _width=random.nextInt(w.toInt()).toDouble();
                   // _height=random.nextInt(h.toInt()).toDouble();

               });
                   }, child: const Text("Button To Click"),
    )
              )
            ],
          ),
        ),
      ),
    );
  }
}
