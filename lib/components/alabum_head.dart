import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlbumHead extends StatelessWidget {
  const AlbumHead({
    Key? key,
    required this.title,
    this.titleAction = "More",
  }) : super(key: key);

  final String title;
  final String titleAction;

  @override
  Widget build(BuildContext context) {
    return Text("AlbumHead");
  }
}
