import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipListView extends StatelessWidget {
  const ChipListView({Key? key, required this.chipTitles}) : super(key: key);

  final List<String> chipTitles;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: chipTitles
          .map<Widget>(
            (e) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Chip(
                label: Text(e),
              ),
            ),
          )
          .toList(),
    );
  }
}
