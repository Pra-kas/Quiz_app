import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.withOpacity(0.6),
                  Colors.pink.withOpacity(0.6),
                ]
              )
            ),
          ),
          leading: const BackButton(),
        ),
        body: Stack(
          children: <Widget>[
            Container(
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
            ),
            Positioned(
              bottom: 20,
              right: 50,
              child: CustomPaint(
                painter: MyPainter(),
              ),
            ),
            Positioned(
              bottom: 160,
              left: 40,
              child: CustomPaint(
                painter : MyPainter2(),
              ),
            ),
            Positioned(
              top: 140,
              left: 30,
              child: CustomPaint(
                painter : MyPainter3(),
              ),
            ),
            Positioned(
              top: 180,
              right: 15,
              child: CustomPaint(
                painter : MyPainter4(),
              ),
            ),
            Positioned(
              top : 140,
              bottom: 80,
              right: 40,
              left: 40,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [
                        Colors.white.withOpacity(0.65),
                        Colors.white.withOpacity(0.65)
                      ]
                    )
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "USERNAME",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.mail_rounded)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "PASSWORD",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.mail_rounded)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "RE ENTER PASSWORD",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.mail_rounded)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border:  InputBorder.none,
                          hintText: "EMAIL",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.mail_rounded)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border:  InputBorder.none,
                          hintText: "PHONE",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.mail_rounded)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                         const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ), 
                        child: const Text("SIGN UP"),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Already have an account?"),
                      TextButton(onPressed: () {
                            print("prakash");
                      }, 
                      child: const Text("Login")),
                    ],
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width, size.height), 90, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width, size.height), 150, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width, size.height), 70, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width, size.height), 70, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

