// ignore: unused_import
// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main(){
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.withOpacity(0.6),
                  Colors.pink.withOpacity(0.6),
                ],
              ),
            ),
            child:  Column(
              children: <Widget>[
                  const SizedBox(
                    height: 55,
                  ),
                const CircleAvatar(
                  radius: 55,
                ),
                const SizedBox(
                    height: 15,
                  ),
                const Text(
                  "User",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                 const SizedBox(
                    height: 15,
                ),
                Card(
                  child: ListTile(
                    title: const Text("Prakash"),
                    trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}