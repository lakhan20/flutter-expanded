import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Column(
        children: [

          _customeContainer(number: 8, color: Colors.red),
          Expanded(
              flex: 5,
              child: Row(
                children: [
                  _customeContainer(number: 5, color: Colors.indigo),
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                            Expanded(
                                flex:1,
                                child: Column(
                              children: [
                                _customeContainer(number: 1, color: Colors.green),
                                _customeContainer(number: 1, color: Colors.lightBlueAccent),

                              ],
                            )),

                              _customeContainer(number: 2, color: Colors.brown),

                            ],

                          )),

                          _customeContainer(number: 3, color: Colors.purple),
                        ],
                      ))
                ],
              ))
        ],
      ))),
    );
  }
}

Widget _customeContainer({
  required int number,
  required Color color,
}) {
  return Expanded(
      flex: number,
      child: Container(
        constraints: BoxConstraints.expand(),
        color: color,
        child: Center(
            child: Text(
          '${number}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        )),
      ));
}
