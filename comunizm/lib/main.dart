import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3),
      body: SafeArea(
              child: SizedBox(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            width: size.width * 0.8,
            height: 150.0,
            decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.5),
              child: Row(
                children: [
                  Container(
                    width: 75.0,
                    height: 75.0,
                     decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
                    child: Image.asset("resourses/avatar.jfif")),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const[
                        Text("Name"),
                        Text("Status")
                      ]
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                ]
              ),
            ),
            )
          ],
        ),
                ),
              ),
      ),
    );
  }
}