import 'package:flutter/material.dart';

void main(){
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scrollbar(
        child: Scaffold(
          appBar: AppBar(
            leading: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black87,
                  width: 2.5
                  ),
              ),
              child: const BackButton(color: Colors.black87),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white12,
            child: Stack(
              children: <Widget>[
                const Positioned(
                  top: 0,
                  child: SizedBox(
                    height: 20,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: loginImage(),
                ),
                const Positioned(
                  left: 15,
                  top: 130,
                  child: Text(
                    "Hello, Welcome Back",
                    style: TextStyle(
                      fontSize: 25.5,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const Positioned(
                  left: 15,
                  top: 170,
                  child: SizedBox(
                    width: 260,
                    child: Text(
                      "Happy to see you again, to use your account please login first",
                      style: TextStyle(
                        fontSize: 15.9,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  right: 15,
                  top: 260,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const TextField(
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                          ),
                          autocorrect: false,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const TextField(
                          autocorrect: false,
                          obscureText : true,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () => {},
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
                          ),
                        ),
                        loginButton()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container loginImage() {
    return Container(
      height: 259,
      width: 140.22,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("/home/prakash/Quiz_app/Quiz_app/lib/models/resources/login.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

    Container loginButton() {
        return Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          width: double.maxFinite,
          height: 30,
          child: Expanded(
            flex: 1,
            child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: Colors.purple,
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}