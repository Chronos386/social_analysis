import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class AlertsShower {
  static void showCupertinoAlert(BuildContext context, String alertText) {
    showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => Theme(
        data: (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? ThemeData.dark()
            : ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(LocaleKeys.error_label.tr()),
          content: Text(alertText),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text(
                LocaleKeys.ok.tr(),
                style: const TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void showCupertinoAlertAction(BuildContext context,
      VoidCallback action, String alertText) {
    showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => Theme(
        data: (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? ThemeData.dark()
            : ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(LocaleKeys.error_label.tr()),
          content: Text(alertText),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                action();
                Navigator.pop(context, 'OK');
              },
              child: Text(
                LocaleKeys.ok.tr(),
                style: const TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void showCupertinoMessage(
      BuildContext context, String messageTitle, String messageText) {
    showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => Theme(
        data: (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? ThemeData.dark()
            : ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(messageTitle),
          content: Text(messageText),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text(
                LocaleKeys.ok.tr(),
                style: const TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void sureCupertinoAlert(BuildContext widgetContext, VoidCallback action,
      String titleText, String alertText) {
    showCupertinoDialog<String>(
      context: widgetContext,
      builder: (BuildContext context) => Theme(
        data: (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? ThemeData.dark()
            : ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(titleText),
          content: Text(alertText),
          actions: [
            CupertinoDialogAction(
              child: Text(
                LocaleKeys.cancel.tr(),
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                LocaleKeys.yes.tr(),
                style: const TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                action();
              },
            ),
          ],
        ),
      ),
    );
  }
}