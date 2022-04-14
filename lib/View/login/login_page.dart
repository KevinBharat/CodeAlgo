import 'package:flutter/material.dart';
import 'package:intro/View/Welcome_Page/components/custom_button.dart';
import 'package:intro/View/custom_widget/my_theme.dart';
import 'package:intro/View/login/components/login_background.dart';
import 'package:intro/View/login/components/passsword_field.dart';
import 'package:intro/View/signup/signup.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'components/textfield_decorator.dart';
import 'components/userid_text_filed.dart';

class loginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  String useridErrorText = "User Id cen not be empty";
  String useridHintText = "Enter User Id";
  Color userIdHintTexeColor = Colors.purple;
  IconData useridTextFieldPrefixIcon = MdiIcons.account;
  Color useridTextFieldPrefixIconcolor = Colors.purple;

  TextEditingController passController = TextEditingController();
  String userPassErrorText = "Password can not be empty";
  String userPassHintText = "Enter Password";
  Color userPassHintTexeColor = Colors.purple;
  IconData userPassTextFieldPrefixIcon = MdiIcons.lock;
  Color userPassTextFieldPrefixIconcolor = Colors.purple;
  IconData suffixicon = MdiIcons.eyeOff;
  Color suffixiconColor = Colors.purple;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Login.png"),
              const Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFileldDecorator(
                      child: UserIdTextField(
                        useridController: useridController,
                        useridErrorText: useridErrorText,
                        useridHintText: useridHintText,
                        userIdHintTexeColor: userIdHintTexeColor,
                        useridTextFieldPrefixIcon: useridTextFieldPrefixIcon,
                        useridTextFieldPrefixIconcolor:
                            useridTextFieldPrefixIconcolor,
                        onUseridValueChange: (value) {
                          // print(value);
                        },
                      ),
                    ),
                    TextFileldDecorator(
                      child: UserPassTextField(
                        userPassController: passController,
                        userPassErrorText: userPassErrorText,
                        userPassHintText: userPassHintText,
                        userPassHintTexeColor: userPassHintTexeColor,
                        userPassTextFieldPrefixIcon:
                            userPassTextFieldPrefixIcon,
                        userPassTextFieldPrefixIconcolor:
                            userPassTextFieldPrefixIconcolor,
                        suffixicon: suffixicon,
                        suffixiconColor: suffixiconColor,
                        onUserPassValueChange: (value) {
                          print("pass values $value");
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Custombutton(
                      buttoncolor: MyTheme.loginButtoncolor,
                      buttontext: "Login",
                      textColor: Colors.white,
                      handleButtonClick: () {
                        print("Login");
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont have account ?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
