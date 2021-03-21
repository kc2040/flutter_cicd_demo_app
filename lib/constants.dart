import 'package:flutter/material.dart';

const kTextInputStyle = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    prefixIcon: Icon(
      Icons.text_fields,
      color: Colors.cyan,
    ),
    hintText: 'user name',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none,
    ),
    errorStyle: TextStyle(color: Colors.white, fontSize: 15.0));
const kTextInputStylePass = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    prefixIcon: Icon(
      Icons.text_fields,
      color: Colors.cyan,
    ),
    hintText: 'password',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none,
    ),
    errorStyle: TextStyle(color: Colors.white, fontSize: 15.0));
const kGradientStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.blue,
      Colors.white,
    ],
  ),
);

// Color(0XFF2588F1),
// Color(0xFF0040E7),
//InputDecoration(hintText: "user name",