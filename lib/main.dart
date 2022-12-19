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
  var userInput = '';
  var answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      userInput.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      answer.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        title: 'AC',
                        onPress: () {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      CustomButton(title: '+/-', onPress: () {}),
                      CustomButton(title: '%', onPress: () {}),
                      CustomButton(
                          title: '/',
                          bgColor: const Color(0xfffe8a01),
                          onPress: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(title: '7', onPress: () {
                        userInput += '7';
                        setState(() {});
                      }),
                      CustomButton(title: '8', onPress: () {
                        userInput += '8';
                        setState(() {});
                      }),
                      CustomButton(title: '0', onPress: () {
                        userInput += '0';
                        setState(() {});
                      }),
                      CustomButton(
                          title: 'x',
                          bgColor: Color(0xfffe8a01),
                          onPress: () {
                            userInput += '*';
                            setState(() {});
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(title: '4', onPress: () {
                        userInput += '4';
                        setState(() {});
                      }),
                      CustomButton(title: '5', onPress: () {
                        userInput += '5';
                        setState(() {});
                      }),
                      CustomButton(title: '6', onPress: () {
                        userInput += '6';
                        setState(() {});
                      }),
                      CustomButton(
                          title: '-',
                          bgColor: Color(0xfffe8a01),
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(title: '1', onPress: () {
                        userInput += '1';
                        setState(() {});
                      }),
                      CustomButton(title: '2', onPress: () {
                        userInput += '2';
                        setState(() {});
                      }),
                      CustomButton(title: '3', onPress: () {
                        userInput += '3';
                        setState(() {});
                      }),
                      CustomButton(
                          title: '+',
                          bgColor: Color(0xfffe8a01),
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(title: '0', onPress: () {}),
                      CustomButton(title: '.', onPress: () {}),
                      CustomButton(title: 'DEL', onPress: () {}),
                      CustomButton(
                          title: '=',
                          bgColor: Color(0xfffe8a01),
                          onPress: equalPressed),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }


  void equalPressed() {
    print('Equal pressed...');
  }
}
