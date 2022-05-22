import 'package:flutter/material.dart';
import 'package:portfolio/about_me.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.hardEdge,
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff085795), Color(0xff001b27)],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage("images/ahmed_lamlih.jpg"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi There !",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat-Medium",
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "I'M AHMED LAMLIH",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat-ExtraBold",
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Me:",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Montserrat-Bold",
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "My name is Ahmed LAMLIH, 21 years old, from Morocco. I'm an IT developer, more specifically web & mobile oriented developer.",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Montserrat-Medium",
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const AboutMe();
                              }),
                            );
                          },
                          child: Text("Know More About Me "),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
