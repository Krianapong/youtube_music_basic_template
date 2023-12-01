import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageURL, fit: BoxFit.cover,);
  }
}
