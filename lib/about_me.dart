import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AboutMe(),
  ));
}

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipperPath(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.32,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff085795), Color(0xff001b27)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "KNOW MORE ABOUT ME",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat-ExtraBold",
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Skills and Education",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat-Bold",
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Education Path:",
                    style: TextStyle(
                      fontFamily: "Montserrat-ExtraBold",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "I learned for 2 years on ISGI Marrakech (2019-2021) IT development, but I got started on this domain long ago. I speak 3 languages : Arabic (fluent), French (fluent), English (fluent), and I'm currently learning Spanish.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 88),
                      fontFamily: "Montserrat-Regular",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Skills:",
                    style: TextStyle(
                      fontFamily: "Montserrat-ExtraBold",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontFamily: "Montserrat-Regular",
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: "Web Devlopment : ",
                            style: TextStyle(fontFamily: "Montserrat-Bold")),
                        TextSpan(
                            text:
                                "HTML, CSS, BOOTSTRAP, JS, JQUERY, REACT, PHP, SYMFONY, .NET"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontFamily: "Montserrat-Regular",
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: "Database : ",
                            style: TextStyle(fontFamily: "Montserrat-Bold")),
                        TextSpan(text: "SQL, T-SQL, My-SQL"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontFamily: "Montserrat-Regular",
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: "Analyse & Conception : ",
                            style: TextStyle(fontFamily: "Montserrat-Bold")),
                        TextSpan(text: "Merise, Agile, UML"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontFamily: "Montserrat-Regular",
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: "Mobile Devlopment : ",
                            style: TextStyle(fontFamily: "Montserrat-Bold")),
                        TextSpan(text: "Flutter"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width * 0.5, size.height + 50, size.width, size.height - 50);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
