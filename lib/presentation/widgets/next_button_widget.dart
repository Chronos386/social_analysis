import '../../res/global.dart';
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
    this.myColor,
    required this.text,
    required this.nextAct,
  });
  final String text;
  final Color? myColor;
  final VoidCallback nextAct;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => nextAct(),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 0),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(10.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
        backgroundColor: MaterialStateProperty.all<Color>(
            (myColor == null) ? Global.gradOne : myColor!
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
      ),
      child: Text(text.toUpperCase()),
    );
  }
}