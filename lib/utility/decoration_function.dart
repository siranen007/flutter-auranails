import 'package:auranails/utility/palette.dart';
import 'package:flutter/material.dart';

InputDecoration registerInputDecoration({String hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: 18.0,
    ),
    hintStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
    hintText: hintText,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.orange,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.orange,
        width: 2,
      ),
    ),
    errorStyle: TextStyle(
      color: Colors.white,
    ),
  );
}

InputDecoration signInInputDecoraton({String hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: 18.0,
    ),
    hintStyle: TextStyle(
      fontSize: 18,
    ),
    hintText: hintText,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.darkBlue,
        width: 2,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.darkBlue,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.darkOrange,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.darkOrange,
        width: 2,
      ),
    ),
    errorStyle: TextStyle(
      color: Palette.darkOrange,
    ),
  );
}
