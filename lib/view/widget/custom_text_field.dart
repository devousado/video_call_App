import 'package:flutter/material.dart';

Widget customTextField(
        {required BuildContext context, void Function()? onPressed}) =>
    SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.copy,
                color: Colors.grey,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
