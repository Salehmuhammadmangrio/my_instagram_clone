import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_clone_saleh/pages/login_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(height: MediaQuery.of(context).size.height/3,),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(image: AssetImage("assets/images/insta.png"),fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/2.7,),

            const Text("from",style: TextStyle(color: Colors.grey,fontSize: 20),),
            Container(
              width: 100,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(image: AssetImage("assets/images/meta.png"),fit: BoxFit.contain),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
