import 'package:flutter/material.dart';
import 'package:widgets/extensions/build_context.dart';

const borderSideStyle = BorderSide(color: Color(0xFF464646), width: 1);

titleStyle(BuildContext context) => TextStyle(
  color: context.colorScheme.onSurface,
  fontSize: 18,
  overflow: TextOverflow.ellipsis,
  fontWeight: FontWeight.w500,
  fontFamily: "Overused Grotesk",
);

normalStyle(BuildContext context) => TextStyle(
  fontSize: 18,
  color: context.colorScheme.surfaceDim,
  overflow: TextOverflow.ellipsis,
  fontWeight: FontWeight.w400,
  fontFamily: "Overused Grotesk",
);
