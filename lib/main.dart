import 'package:flutter/material.dart';

void main() {
  runApp(const Trial());
}

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        drawer: const Drawer(
          backgroundColor: Colors.lightGreen,
          child: UserAccountsDrawerHeader(
            accountName: Text("Prakash"),
            accountEmail: Text("prakash63690@gmail.com"),
          ),
        ),
      ),
    );
  }
}
