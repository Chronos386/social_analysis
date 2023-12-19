import '../my_text_field.dart';
import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class JustTextField extends StatefulWidget {
  const JustTextField({
    super.key,
    this.enabled,
    this.hintText,
    this.necessarily,
    required this.controller,
  });
  final bool? enabled;
  final String? hintText;
  final bool? necessarily;
  final TextEditingController controller;

  @override
  State<JustTextField> createState() => _JustTextFieldState();
}

class _JustTextFieldState extends State<JustTextField> {
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
    bool necessarily = false;
    if (widget.necessarily != null) {
      necessarily = widget.necessarily!;
    }
    return MyTextField(
      firstCaps: true,
      enabled: widget.enabled,
      hintText: widget.hintText,
      controller: widget.controller,
      suffixIcon: _isTextFieldEmpty ? necessarily ? IconButton(
        icon: const Icon(Icons.error_outline),
        color: Global.red,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text(LocaleKeys.required_field.tr()),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ): null :
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