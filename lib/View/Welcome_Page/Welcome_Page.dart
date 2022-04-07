// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:intro/View/custom_widget/my_theme.dart';
import 'components/background.dart';
import 'components/custom_button.dart';

class WelcomePage extends StatelessWidget {
  /* late Color buttoncolor, textColor;
  late String buttontext;
  late Function buttonClicke;*/

  const WelcomePage({Key? key}) : super(key: key);

  get loginButtonClickHandler => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      /* appBar: AppBar(
        title: const Text("WelcomePage"),
      ),*/
      body: Background(
        size: size,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Code Algo Family",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/undraw_Balloons.png",
                width: size.width * 0.7,
              ),
              Custombutton(
                buttoncolor: MyTheme.loginButtoncolor,
                buttontext: "Login",
                textColor: Theme.of(context).colorScheme.onPrimary,
                handleButtonClick: lhandleButtonClick,
              ),
              SizedBox(
                height: 20,
              ),
              Custombutton(
                buttoncolor: MyTheme.signupButtoncolor,
                buttontext: "SIGNUP",
                textColor: Theme.of(context).colorScheme.onSecondary,
                handleButtonClick: signUphandleButtonClick,
              ),
            ],
          ),
        ),
      ),
    );
  }

  lhandleButtonClick() {}
  signUphandleButtonClick() {}
}
