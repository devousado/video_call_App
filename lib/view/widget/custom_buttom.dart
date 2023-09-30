import 'package:flutter/material.dart';

Widget customButtom(
        {required BuildContext context,
        required void Function()? onPressed,
        Color? textColor,
        required String text,
        required Color color}) =>
    ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size(
            MediaQuery.of(context).size.width * 0.45,
            MediaQuery.of(context).size.height * 0.07)),
        backgroundColor: MaterialStatePropertyAll(color),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? Colors.white),
      ),
    );
