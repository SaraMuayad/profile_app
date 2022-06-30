import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return profile();
  }
}

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 34.0),
          child: Column(
            children: [
              //For Image Porile
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/2/21/Johnny_Depp_2020.jpg",
                    ),
                  )
                ],
              ),
              SizedBox(height: 5),
              //For Name and Detial About person
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Johnny Depp",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                      width: 250,
                      height: 50,
                      child: Center(
                          child: Text(
                              textAlign: TextAlign.center,
                              "John Christopher Depp II (born June 9, 1963) is an American actor, producer and musician.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 141, 136, 136))))),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              // For socila Like Button
              Column(
                children: [
                  SizedBox(
                      width: 300.0,
                      height: 50.0,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.linkedin),
                          label: Text("Linkedin"),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              textStyle: TextStyle(fontSize: 15),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              side: BorderSide(
                                  width: 0,
                                  color: Color.fromARGB(255, 159, 154, 154))))),
                  SizedBox(height: 5),
                  SizedBox(
                      width: 300.0,
                      height: 50.0,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.facebook),
                          label: Text("Facebook"),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              textStyle: TextStyle(fontSize: 15),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              side: BorderSide(
                                  width: 0,
                                  color: Color.fromARGB(255, 159, 154, 154))))),
                  SizedBox(height: 5),
                  SizedBox(
                      width: 300.0,
                      height: 50.0,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.instagram),
                          label: Text("Instegram"),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              textStyle: TextStyle(fontSize: 15),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              side: BorderSide(
                                  width: 0,
                                  color: Color.fromARGB(255, 156, 154, 159))))),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 300.0,
                    height: 50.0,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.accusoft),
                      label: Text("MyWebsite"),
                      style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 15),
                          shape: StadiumBorder(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          side: BorderSide(
                              width: 0,
                              color: Color.fromARGB(255, 159, 154, 154))),
                    ),
                  )
                  //Colors.redAccent.withOpacity(0.5)
                ],
              ),
              SizedBox(height: 10),
              // For bottom button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      child: Icon(FontAwesomeIcons.phone),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      )),
                  TextButton(
                    child: Icon(FontAwesomeIcons.envelope),
                    onPressed: () {},
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                  TextButton(
                    child: Icon(FontAwesomeIcons.comment),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
