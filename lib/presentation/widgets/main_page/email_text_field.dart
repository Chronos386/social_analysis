import '../my_text_field.dart';
import '../../../res/global.dart';
import 'package:flutter/material.dart';


class EmailTextField extends StatefulWidget {
  const EmailTextField({
    super.key,
    this.enabled,
    this.hintText,
    required this.controller,
  });
  final bool? enabled;
  final String? hintText;
  final TextEditingController controller;

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  bool _isTextFieldEmpty = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      _isTextFieldEmpty = widget.controller.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      hintText: widget.hintText,
      enabled: widget.enabled,
      controller: widget.controller,
      type: TextInputType.emailAddress,
      prefixIcon: const Icon(
        Icons.email,
        color: Global.gradOne,
      ),
      suffixIcon: _isTextFieldEmpty ? null :
      IconButton(
        icon: const Icon(Icons.cancel),
        color: Global.gradOne,
        onPressed: () {
          widget.controller.clear();
          setState(() {
            _isTextFieldEmpty = true;
          });
        },
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