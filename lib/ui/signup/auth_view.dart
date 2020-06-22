import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'auth_view.g.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginForm();
  }
}

@widget
Widget loginForm(BuildContext context) {
  final containerStyle = ParentStyle()
    ..alignment.center()
    ..padding(all: 16)
    ..width(350)
    ..background.color(Colors.white)
    ..borderRadius(all: 8)
    ..elevation(3);

  final textStyle = TxtStyle()
    ..fontSize(30)
    ..textColor(Colors.deepPurple.shade500)
    ..bold()
    ..textAlign.center();
  return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Parent(
              style: containerStyle,
              child: Container(
                child: Txt(
                  "Welcome to Todo!",
                  style: textStyle,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Parent(
              style: containerStyle.clone()..elevation(1.5),
              child: Container(
                child: Txt(
                  "Login!",
                  style: textStyle.clone()
                    ..fontSize(27)
                    ..textColor(Colors.deepPurple.shade700),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FormFields(
              textStyle: textStyle,
              cStyle: containerStyle,
            )
          ],
        ),
      ),
    ),
  );
}

@hwidget
Widget formFields(BuildContext context,
    {ParentStyle cStyle, TxtStyle textStyle}) {
  var textController1 = useTextEditingController();
  var textController2 = useTextEditingController();

  return Parent(
    style: cStyle.clone()..padding(vertical: 50, horizontal: 10),
    child: Column(
      children: [
        Parent(
          style: cStyle
            ..clone()
            ..elevation(0.5)
            ..ripple(true),
          child: Container(
            // padding: EdgeInsets.only(top: 25, bottom: 30, left: 5, right: 5),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "User Name", border: InputBorder.none),
              controller: textController1,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Parent(
          style: cStyle
            ..clone()
            ..elevation(0.5)
            ..ripple(true),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password", border: InputBorder.none),
              controller: textController2,
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Parent(
          gesture: Gestures()..onTap(() {}),
          style: cStyle.clone()
            ..elevation(1.5)
            ..ripple(true),
          child: Container(
            child: Txt(
              "Login",
              style: textStyle.clone()
                ..fontSize(23)
                ..textColor(Colors.black)
                ..italic(),
            ),
          ),
        ),
      ],
    ),
  );
}
