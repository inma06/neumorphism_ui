import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isClicked_1 = false;
bool isClicked_2 = false;
bool isClicked_3 = false;
const distance = 12.0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _boxItem_1(),
              const SizedBox(height: 30),
              _boxItem_2(),
              const SizedBox(height: 30),
              _boxItem_3(),
            ],
          ),
        )));
  }

  Widget _boxItem_1() {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (isClicked_1) {
              isClicked_1 = false;
            } else {
              isClicked_1 = true;
            }
          },
        );
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          boxShadow: isClicked_1
              ? null
              : const [
                  BoxShadow(
                    offset: Offset(distance, distance),
                    color: Colors.black26,
                    blurRadius: distance,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    offset: Offset(-distance, -distance),
                    color: Colors.white70,
                    blurRadius: distance,
                    spreadRadius: 2,
                  ),
                ],
        ),
        child: Center(
          child: Image.asset(
            'assets/images/jung.png',
            width: 30,
            height: 30,
            fit: BoxFit.fitWidth,
            // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _boxItem_2() {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (isClicked_2) {
              isClicked_2 = false;
            } else {
              isClicked_2 = true;
            }
          },
        );
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          boxShadow: isClicked_2
              ? null
              : const [
                  BoxShadow(
                    offset: Offset(distance, distance),
                    color: Colors.black26,
                    blurRadius: distance,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    offset: Offset(-distance, -distance),
                    color: Colors.white70,
                    blurRadius: distance,
                    spreadRadius: 2,
                  ),
                ],
        ),
        child: Center(
          child: Image.asset(
            'assets/images/jung.png',
            width: 30,
            height: 30,
            fit: BoxFit.fitWidth,
            // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _boxItem_3() {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (isClicked_3) {
              isClicked_3 = false;
            } else {
              isClicked_3 = true;
            }
          },
        );
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          boxShadow: isClicked_3
              ? null
              : const [
                  BoxShadow(
                    offset: Offset(distance, distance),
                    color: Colors.black26,
                    blurRadius: distance,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    offset: Offset(-distance, -distance),
                    color: Colors.white70,
                    blurRadius: distance,
                    spreadRadius: 2,
                  ),
                ],
        ),
        child: Center(
          child: Image.asset(
            'assets/images/jung.png',
            width: 30,
            height: 30,
            fit: BoxFit.fitWidth,
            // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
