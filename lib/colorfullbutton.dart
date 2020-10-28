import 'package:flutter/material.dart';
import 'dart:math';

class ColorfulButton extends StatefulWidget {
  Color maincolor, secondcolor;
  IconData icondata;
  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(maincolor, secondcolor, icondata);
  ColorfulButton(this.maincolor, this.secondcolor, this.icondata);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool ispressed = false;
  Color maincolor, seconcolor;
  IconData icondata;

  _ColorfulButtonState(this.seconcolor, this.maincolor, this.icondata);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4, //pi radian = 180 drajat,pi=3,14
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            ispressed = !ispressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            ispressed = !ispressed;
          });
        },
        onTapCancel: () {
          setState(() {
            ispressed = !ispressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (ispressed) ? 5 : 10,
          shadowColor: (ispressed) ? seconcolor : maincolor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (ispressed) ? seconcolor : maincolor,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        icondata,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
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
