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
              bottom: 25,
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
              top : 150,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const SizedBox(
                        height: 100,
                        ),
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
                        height: 25,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "PASSWORD",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.lock)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                         const SizedBox(
                        height: 55,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ), 
                        child: const Text("LOGIN"),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      const Text("Dont have an account?"),
                      TextButton(onPressed: () {}, child: const Text("create")),
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

