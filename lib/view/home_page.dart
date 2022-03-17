import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isClicked = true;
const distance = 12.0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 200),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  _boxItem(),
                  Spacer()
                ],
              ),
            ],
          ),
        ));
  }

  Widget _boxItem() {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (isClicked) {
              isClicked = false;
            } else {
              isClicked = true;
            }
          },
        );
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: math.Random().nextInt(1200)),
        curve: Curves.fastOutSlowIn,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          boxShadow: isClicked
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
      ),
    );
  }
}
