import '../my_text_field.dart';
import '../../../res/global.dart';
import 'package:flutter/material.dart';


class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.action,
    required this.hint,
    required this.controller,
  });
  final String hint;
  final ValueChanged<bool>? action;
  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _showPassword = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        if (widget.action != null) {
          widget.action!(_focusNode.hasFocus);
        }
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      hintText: widget.hint,
      focusNode: _focusNode,
      obscureText: !_showPassword,
      controller: widget.controller,
      obscuringCharacter: "\u{25CF}",
      type: TextInputType.visiblePassword,
      prefixIcon: const Icon(
        Icons.password,
        color: Global.gradOne,
      ),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _showPassword = !_showPassword;
          });
        },
        icon: Icon(
          _showPassword ? Icons.visibility : Icons.visibility_off,
          color: Global.gradOne,
        ),
      ),
      labelStyle: TextStyle(
        color: _focusNode.hasFocus ?
        Global.gradOne : Global.getTextColor(context),
      ),
      paddingText: const EdgeInsets.only(left: 10.0),
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: Global.getBorderColor(context),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: Global.getBorderColor(context),
        ),
      ),
      decoration: const BoxDecoration(
        color: Global.bottomNavBarColor,
      ),
    );
  }
}