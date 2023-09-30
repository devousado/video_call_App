import 'package:flutter/material.dart';

AppBar customAppBar(
        {void Function()? onPressed,
        required BuildContext context,
        required String title}) =>
    AppBar(
      leading: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
