import 'package:flutter/material.dart';
import 'package:instagram_clone_saleh/data_file.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DataFile dt = DataFile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(dt.logos[index]),
            ),
            title: Text(
              dt.names[index],
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "@${dt.userName[index]}",
              style: const TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.more_vert),
            ),
          );
        },
        itemCount: dt.images.length,
      ),
    );
  }
}
