import 'package:flutter/material.dart';



class NeuButton extends StatelessWidget {
  final ontap;
  final isButtonPressed;

  NeuButton({this.ontap, required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
    onTap: ontap,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 7),

              height: 250,
              width: 250,
              child: Icon(
                Icons.apple_outlined,
                size: 150,
                color: isButtonPressed ? Colors.black: Colors.grey[600],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: isButtonPressed ?[
                  //no shadow if button is  pressed
                ]:  [
                  BoxShadow(
                      color: Colors.purple,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 20.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                    color: Colors.orange,
                    offset: Offset(5.0, -5.0),
                    blurRadius: 20.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),


        ),
      );

  }
}
