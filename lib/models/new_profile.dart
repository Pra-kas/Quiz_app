import 'package:flutter/material.dart';

void main() {
  runApp(const ProfNew());
}

class ProfNew extends StatefulWidget {
  const ProfNew({super.key});

  @override
  State<ProfNew> createState() => _ProfNewState();
}

class _ProfNewState extends State<ProfNew> {
  bool isPressedSkills = false;
  bool isPressedProjects = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.white24,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: 130,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("/home/prakash/Quiz_app/Quiz_app/lib/models/resources/img_container_prof.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 27,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const BackButton(
                      color: Colors.black,
                      style: ButtonStyle(
                        iconSize: MaterialStatePropertyAll(26),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 120,
                  right: 120,
                  child: SizedBox(
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("/home/prakash/Quiz_app/Quiz_app/lib/models/resources/sample_prof_icon.png"),
                    ),
                  ),
                ),
                const Positioned(
                  top: 215,
                  left: 120,
                  right: 120,
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 40,
                    child: Text(
                      "Jenny Wilson",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Positioned(
                  top: 245,
                  left: 100,
                  right: 100,
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 40,
                    child: Text(
                      "Photographer",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.purple,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: isPressedSkills
                              ? [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 13,
                                    offset: const Offset(6, 6),
                                  )
                                ]
                              : [],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isPressedSkills = true;
                              isPressedProjects = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.purple,
                          ),
                          child: const Text(
                            "Skills",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: isPressedProjects
                              ? [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 13,
                                    offset: const Offset(6, 6),
                                  )
                                ]
                              : [],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isPressedProjects = true;
                              isPressedSkills = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.purple,
                          ),
                          child: const Text(
                            "Projects",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  top: 355,
                  left: 20,
                  right: 20,
                  bottom: 0,
                  child: isPressedSkills
                      ? skillsDetails()
                      : isPressedProjects
                        ? projectDetails()
                  : const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container skillsDetails() {
    return Container(
        decoration: const BoxDecoration(),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1,),
            Text(
              "Skills",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              fontFamily:'poppins'
            ),
            textAlign: TextAlign.start,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ), 
                      child: SizedBox(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Programming",
                            style: TextStyle(
                              fontSize: 16,
                              color : Colors.deepPurple
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                      child : SizedBox(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Fullstack",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepPurple
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ), 
                      child: SizedBox(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Mobile  app",
                            style: TextStyle(
                              fontSize: 16,
                              color : Colors.deepPurple
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child : SizedBox(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Data anaylsis",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepPurple
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ), 
                      child: SizedBox(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: Text(
                            "ML & AI",
                            style: TextStyle(
                              fontSize: 16,
                              color : Colors.deepPurple
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child : SizedBox(
                        width: 150,
                        height: 40,
                        child: Center(
                          child: Text(
                            "UI&UX Design",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepPurple
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container projectDetails() {
    return Container(
        decoration: const BoxDecoration(),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Projects",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      fontFamily: 'poppins',
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: 275,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(),
                        image: const DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage("/home/prakash/Quiz_app/Quiz_app/lib/models/resources/sample_project.png"),
                          fit:BoxFit.fitWidth
                    ),
                ),
                child : const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        Text(
                        "College Management system",
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400
                        ),
                      ),
                        Text(
                          "centralized software solution that automates and streamlines administrative processes",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
