import 'package:flutter/material.dart';

const textFieldDecoration = InputDecoration(
    hintText: 'Login',
    hintStyle: TextStyle(color: Colors.blueGrey),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
        borderSide: BorderSide(width: 1.0, color: Colors.lightBlueAccent)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
        borderSide: BorderSide(width: 1.0, color: Colors.lightBlueAccent)));
