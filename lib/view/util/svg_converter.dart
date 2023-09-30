import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgConverter({required String imageSvg}) => SvgPicture.asset(
      imageSvg,
    );
