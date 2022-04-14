import 'package:flutter/material.dart';

class UserIdTextField extends StatelessWidget {
  const UserIdTextField({
    Key? key,
    required this.useridController,
    required this.useridErrorText,
    required this.useridHintText,
    required this.userIdHintTexeColor,
    required this.useridTextFieldPrefixIcon,
    required this.useridTextFieldPrefixIconcolor,
    required this.onUseridValueChange,
  }) : super(key: key);

  final TextEditingController useridController;
  final String useridErrorText;
  final String useridHintText;
  final Color userIdHintTexeColor;
  final IconData useridTextFieldPrefixIcon;
  final Color useridTextFieldPrefixIconcolor;
  final Function onUseridValueChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: useridController,
      validator: (value) {
        if (value!.isEmpty) {
          return useridErrorText;
        } else {
          return null;
        }
      },
      onChanged: (value) {
        onUseridValueChange(value);
      },
      cursorColor: Theme.of(context).colorScheme.onBackground,
      style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      decoration: InputDecoration(
        hintText: useridHintText,
        hintStyle: TextStyle(
          color: userIdHintTexeColor,
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          useridTextFieldPrefixIcon,
          size: 30,
          color: useridTextFieldPrefixIconcolor,
        ),
      ),
    );
  }
}
