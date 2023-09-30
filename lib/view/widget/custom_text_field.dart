import 'package:flutter/material.dart';

Widget customTextField({
  required BuildContext context,
  void Function()? onPressed,
  IconButton? iconData,
  String? hintext,
}) =>
    SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintext,
          suffixIcon: iconData,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
