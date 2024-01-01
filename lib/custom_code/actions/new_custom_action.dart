// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> newCustomAction(
  int price,
  int days,
) async {
  // create function accepts two parameters and multiplying two parameters and return the value
  int intVar = price * days;
  double amount = intVar.toDouble();
  return amount;
}
