import '../../res/global.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    this.type,
    this.border,
    this.enabled,
    this.hintText,
    this.labelText,
    this.focusNode,
    this.firstCaps,
    this.searchSmg,
    this.labelStyle,
    this.suffixIcon,
    this.prefixIcon,
    this.decoration,
    this.obscureText,
    this.paddingText,
    this.enabledBorder,
    this.focusedBorder,
    this.paddingBorder,
    this.obscuringCharacter,
    required this.controller,
  });
  final bool? enabled;
  final bool? firstCaps;
  final String? hintText;
  final Icon? prefixIcon;
  final bool? obscureText;
  final String? labelText;
  final InputBorder? border;
  final TextInputType? type;
  final FocusNode? focusNode;
  final TextStyle? labelStyle;
  final IconButton? suffixIcon;
  final VoidCallback? searchSmg;
  final BoxDecoration? decoration;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String? obscuringCharacter;
  final EdgeInsetsGeometry? paddingText;
  final TextEditingController controller;
  final EdgeInsetsGeometry? paddingBorder;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      (widget.searchSmg != null) ? widget.searchSmg!() : () {};
    });
  }

  @override
  Widget build(BuildContext context) {
    bool firstCaps = false;
    if (widget.firstCaps != null) {
      firstCaps = widget.firstCaps!;
    }
    return Container(
      decoration: widget.decoration,
      padding: widget.paddingBorder ?? EdgeInsets.zero,
      child: TextField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        enabled: widget.enabled ?? true,
        obscureText: widget.obscureText ?? false,
        keyboardType: widget.type ?? TextInputType.text,
        obscuringCharacter: widget.obscuringCharacter ?? '•',
        textCapitalization: firstCaps ? TextCapitalization.sentences :
        TextCapitalization.none,
        decoration: InputDecoration(
          border: widget.border,
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: widget.labelStyle,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          enabledBorder: widget.enabledBorder,
          focusedBorder: widget.focusedBorder,
          hintStyle: Global.getHintStyle(context),
          contentPadding: widget.paddingText ?? EdgeInsets.zero,
        ),
        cursorColor: Global.gradOne,
      ),
    );
  }
}