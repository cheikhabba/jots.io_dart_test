import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jots/utils/user_email.dart';

const grey = Color.fromARGB(255, 221, 218, 203);
const black = Color.fromARGB(255, 0, 0, 0);

TextStyle bTextStyle =
    const TextStyle(color: Colors.black, fontFamily: "Century Gothic.ttf");
TextStyle bTextStyleBold = const TextStyle(
    color: Colors.black,
    fontFamily: "Century Gothic.ttf",
    fontWeight: FontWeight.w500);

bool settingNav = false;
bool accountNav = false;
bool blackColor = true;

final emailProvider = StateProvider<String?>(
  (ref) => UserEmailPref.getEmail() ?? "user email",
);
