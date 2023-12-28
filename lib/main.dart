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
  var _volume = 10.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        endDrawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 146, 182, 248),
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Prakash"),
                accountEmail: Text("prakash63690@gmail.com"),
                currentAccountPicture: CircleAvatar(),
              ),
              const ListTile(
                title: Text("Prakash"),
                leading: Icon(Icons.mail),
              ),
              const Divider(
                endIndent: 0.5,
              ),
              ListTile(
                title: const Text("Prakash"),
                leading: IconButton(
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.mail),
                ),
              ),
              const Divider(
                endIndent: 0.5,
              ),
            ],
          ),
        ),
        body:  Center(
          child : Ink(
            decoration: const ShapeDecoration(
              color: Colors.blueAccent,
              shape: CircleBorder(
              ),
            ),
             child : IconButton(
                icon : const Icon(Icons.add), onPressed: () {  },
              )
          )
      ),
      ),
    );
  }
}
