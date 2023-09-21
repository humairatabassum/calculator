import 'package:flutter/material.dart';

class Btn {
  static const String div = "/";
  static const String mult = "X";
  static const String mod = "%";
  static const String add = "+";
  static const String sub = "-";
  static const String equal = "=";
  static const String clr = "C";
  static const String del = "D";
  static const String dot = ".";

  static const String n1 = "1";
  static const String n2 = "2";
  static const String n3 = "3";
  static const String n4 = "4";
  static const String n5 = "5";
  static const String n6 = "6";
  static const String n7 = "7";
  static const String n8 = "8";
  static const String n9 = "9";
  static const String n0 = "0";

  static const List<String> numbers = [
    n0,
    n1,
    n2,
    n3,
    n4,
    n5,
    n6,
    n7,
    n8,
    n9,
    dot
  ];

  static const List<String> operands = [
    div,
    mult,
    mod,
    add,
    sub,
    clr,
    del,
  ];

  static const List<List<String>> buttons = [
    [del, clr, mod, div],
    [n7, n8, n9, mult],
    [n4, n5, n6, sub],
    [n1, n2, n3, add],
    [dot, n0, equal],
  ];
  static const List<List<Color>> colors = [
    [Colors.blueGrey, Colors.blueGrey, Colors.amber, Colors.amber],
    [Colors.black, Colors.black, Colors.black, Colors.amber],
    [Colors.black, Colors.black, Colors.black, Colors.amber],
    [Colors.black, Colors.black, Colors.black, Colors.amber],
    [Colors.black, Colors.black, Colors.amber],
  ];
}
