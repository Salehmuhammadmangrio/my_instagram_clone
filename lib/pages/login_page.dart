import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_saleh/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>   {

  final TextEditingController _userNameController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.40,
              child: Center(
                child: Container(
                  width: 70,
                    height: 70,
                    child: Image.asset("assets/images/insta.png",fit: BoxFit.cover,)),
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller :_userNameController,
                    decoration: const InputDecoration(

                        hintText: "Username,mobile number or email",
                        hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                    ),
                  ),
                  const SizedBox(height: 10,),

                  TextField(
                    controller :_passwordController,
                    decoration: const InputDecoration(
                      hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));
                    },style: TextButton.styleFrom(backgroundColor: Colors.indigo,minimumSize:Size(MediaQuery.of(context).size.width, 60),shape: const RoundedRectangleBorder(), ),
                      child: const Text("Log in",style: TextStyle(color: Colors.white,fontSize: 25),),),
                  ),
                  
                  const SizedBox(height: 10,),
                  TextButton(onPressed: (){}, child: const Text("Forgot password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87),)),
                  SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: OutlinedButton(onPressed: (){}, style: OutlinedButton.styleFrom(minimumSize: Size(MediaQuery.of(context).size.width, 40),shape: const RoundedRectangleBorder()),
                          child: const Text("Create new account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black87),))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
