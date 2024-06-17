import 'package:flutter/material.dart';
import 'package:toku_project/components/iteminfo.dart';
import 'package:toku_project/models/itemmodel.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.itemphase, required this.color});

  final ItemModel itemphase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(iteminfo: itemphase),
    );
  }
}
