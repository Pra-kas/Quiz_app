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
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 146, 182, 248),
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
                    print("prakash");
                  },
                  icon: Icon(Icons.mail),
                ),
              ),
              const Divider(
                endIndent: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
