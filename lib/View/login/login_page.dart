import 'package:flutter/material.dart';
import 'package:intro/View/login/components/login_background.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'components/textfield_decorator.dart';
import 'components/userid_text_filed.dart';

class loginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String useridErrorText = "User Id cen not be empty";
  String useridHintText = "Enter User Id";
  Color userIdHintTexeColor = Colors.purple;
  IconData useridTextFieldPrefixIcon = MdiIcons.account;
  Color useridTextFieldPrefixIconcolor = Colors.purple;

  loginPage({Key? key}) : super(key: key);
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
