import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: boxContent,
    );
  }
}
