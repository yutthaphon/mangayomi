import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final ScrollController? controller;
  final int? itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  const GridViewWidget(
      {super.key,
      this.controller,
      required this.itemCount,
      required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: GridView.builder(
          controller: controller,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            mainAxisExtent: 280,
          ),
          itemCount: itemCount,
          itemBuilder: itemBuilder),
    );
  }
}