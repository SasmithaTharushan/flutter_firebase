import 'package:firebase/constants/colors.dart';
import 'package:flutter/material.dart';

const TextStyle descStyle = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const textInputDecoration = InputDecoration(
  hintText: 'Email',
  hintStyle: TextStyle(color: Colors.white, fontSize: 12),
  fillColor: bgBlack,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: mainYellow, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: mainYellow, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10))),
);
