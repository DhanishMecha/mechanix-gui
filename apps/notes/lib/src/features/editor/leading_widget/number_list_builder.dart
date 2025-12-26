import 'package:flutter/material.dart';
import 'package:widgets/extensions/build_context.dart';

class NumberListBuilder extends StatelessWidget {
  final String number;
  const NumberListBuilder({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: const EdgeInsets.only(top: 2, right: 14),
      child: Text(
        "$number.",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: context.colorScheme.onSurface,
          height: 1.45, // Word-like line spacing
          letterSpacing: 0.0,
        ),
      ),
    );
  }
}
