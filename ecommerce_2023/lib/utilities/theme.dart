import 'package:ecommerce_2023/utilities/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
            scaffoldBackgroundColor: GlobalVariables.bgColor,
            primaryColor: GlobalVariables.primaryColor,
            inputDecorationTheme: InputDecorationTheme(
              // labelStyle: Theme.of(context).textTheme.subtitle1,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: const BorderSide(color: Colors.grey)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: const BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: const BorderSide(color: Colors.grey)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: const BorderSide(color: Colors.red)),
            ));