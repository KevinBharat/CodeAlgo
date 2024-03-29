import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    Key? key,
    required this.buttoncolor,
    required this.buttontext,
    required this.textColor,
    required this.handleButtonClick,
  }) : super(key: key);

  final Color buttoncolor;
  final String buttontext;
  final Color textColor;
  final Function handleButtonClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(50),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              ),
              backgroundColor: MaterialStateProperty.all(buttoncolor)),
          onPressed: () {
            handleButtonClick();
          },
          child: Text(
            buttontext,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: textColor),
          ),
        ),
      ),
    );
  }
}
