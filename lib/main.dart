import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.black),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Expanded(child: Text('0')),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: 'AC', bgColor: Color(0xff929193)),
                  CustomButton(title: '+/-', bgColor: Color(0xff929193)),
                  CustomButton(title: '%', bgColor: Color(0xff929193)),
                  CustomButton(title: '/', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '7', bgColor: Color(0xff929193)),
                  CustomButton(title: '8', bgColor: Color(0xff929193)),
                  CustomButton(title: '0', bgColor: Color(0xff929193)),
                  CustomButton(title: 'x', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '4', bgColor: Color(0xff929193)),
                  CustomButton(title: '5', bgColor: Color(0xff929193)),
                  CustomButton(title: '6', bgColor: Color(0xff929193)),
                  CustomButton(title: '-', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '1', bgColor: Color(0xff929193)),
                  CustomButton(title: '2', bgColor: Color(0xff929193)),
                  CustomButton(title: '3', bgColor: Color(0xff929193)),
                  CustomButton(title: '+', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '0', bgColor: Color(0xff929193)),
                  CustomButton(title: '.', bgColor: Color(0xff929193)),
                  CustomButton(title: 'DEL', bgColor: Color(0xff929193)),
                  CustomButton(title: '=', bgColor: Color(0xfffe8a01)),
                ],
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Color bgColor;

  const CustomButton({Key? key, required this.title, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
