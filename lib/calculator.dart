// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const cWhite = Colors.white;
const cBlack = Colors.white;
const cBlue = Colors.blue;
const cTransparent = Colors.transparent;

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String valueText = '0';
  double numOne = 0;
  double numTwo = 0;
  double result = 0;
  double finalResult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Colors.lightBlue.shade600)),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(flex: 2, child: Container()),
                      Expanded(
                        flex: 1,
                        child: Text(
                          valueText,
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 50,
                              fontWeight: FontWeight.w500),
                          maxLines: 1,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                drawButton(1, 'C', cBlack, cTransparent),
                drawButton(1, '+/-', cBlack, cTransparent),
                drawButton(1, '%', cBlack, cTransparent),
                drawButton(1, '/', cBlue, cTransparent),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                drawButton(1, '7', cBlack, cTransparent),
                drawButton(1, '8', cBlack, cTransparent),
                drawButton(1, '9', cBlack, cTransparent),
                drawButton(1, 'x', cBlue, cTransparent),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                drawButton(1, '4', cBlack, cTransparent),
                drawButton(1, '5', cBlack, cTransparent),
                drawButton(1, '6', cBlack, cTransparent),
                drawButton(1, '-', cBlue, cTransparent),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                drawButton(1, '1', cBlack, cTransparent),
                drawButton(1, '2', cBlack, cTransparent),
                drawButton(1, '3', cBlack, cTransparent),
                drawButton(1, '+', cBlue, cTransparent),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                drawButton(2, '0', cBlack, cTransparent),
                drawButton(1, '.', cBlack, cTransparent),
                drawButton(1, '=', cWhite, cBlue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget drawButton(
      int flex, String text, Color textColor, Color containerColor) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: () {},
        overlayColor: MaterialStateProperty.all(Colors.white),
        child: Container(
            color: containerColor,
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: textColor),
            ))),
      ),
    );
  }
}
