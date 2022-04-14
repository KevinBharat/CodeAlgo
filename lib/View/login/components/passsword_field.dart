import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserPassTextField extends StatefulWidget {
  bool isPassWordVisible = false;

  UserPassTextField({
    Key? key,
    required this.userPassController,
    required this.userPassErrorText,
    required this.userPassHintText,
    required this.userPassHintTexeColor,
    required this.userPassTextFieldPrefixIcon,
    required this.userPassTextFieldPrefixIconcolor,
    required this.onUserPassValueChange,
    required this.suffixicon,
    required this.suffixiconColor,
  }) : super(key: key);

  final TextEditingController userPassController;
  final String userPassErrorText;
  final String userPassHintText;
  final Color userPassHintTexeColor;
  final IconData userPassTextFieldPrefixIcon;
  final Color userPassTextFieldPrefixIconcolor;
  final IconData suffixicon;
  final Color suffixiconColor;
  final Function onUserPassValueChange;

  @override
  State<UserPassTextField> createState() => _UserPassTextFieldState();
}

class _UserPassTextFieldState extends State<UserPassTextField> {
  bool isPassWordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.userPassController,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.userPassErrorText;
        } else {
          return null;
        }
      },
      onChanged: (value) {
        widget.onUserPassValueChange(value);
      },
      cursorColor: Theme.of(context).colorScheme.onBackground,
      style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      obscureText: isPassWordVisible ? false : true,
      decoration: InputDecoration(
        hintText: widget.userPassHintText,
        hintStyle: TextStyle(
          color: widget.userPassHintTexeColor,
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          widget.userPassTextFieldPrefixIcon,
          size: 20,
          color: widget.userPassTextFieldPrefixIconcolor,
        ),
        suffix: IconButton(
          icon: isPassWordVisible
              ? const Icon(MdiIcons.eye)
              : const Icon(MdiIcons.eyeOff),
          color: widget.suffixiconColor,
          onPressed: () {
            print("Hello");
            setState(() {
              isPassWordVisible = !isPassWordVisible;
            });
          },
        ),
      ),
    );
  }
}
