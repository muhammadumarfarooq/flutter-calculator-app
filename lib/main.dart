import 'package:calculator_app/components/CustomButton.dart';
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
                  CustomButton(title: 'AC'),
                  CustomButton(title: '+/-'),
                  CustomButton(title: '%'),
                  CustomButton(title: '/', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '7'),
                  CustomButton(title: '8'),
                  CustomButton(title: '0'),
                  CustomButton(title: 'x', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '4'),
                  CustomButton(title: '5'),
                  CustomButton(title: '6'),
                  CustomButton(title: '-', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '1'),
                  CustomButton(title: '2'),
                  CustomButton(title: '3'),
                  CustomButton(title: '+', bgColor: Color(0xfffe8a01)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomButton(title: '0'),
                  CustomButton(title: '.'),
                  CustomButton(title: 'DEL'),
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
