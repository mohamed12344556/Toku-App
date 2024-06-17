import 'package:flutter/material.dart';
import 'package:toku_project/components/iteminfo.dart';
import 'package:toku_project/models/itemmodel.dart';

class Items extends StatelessWidget {
  const Items({
    super.key,
    required this.itemModel,
    required this.color,
  });

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF4DB),
            child: Image.asset(itemModel.image!),
          ),
          Expanded(child: ItemInfo(iteminfo: itemModel)),
        ],
      ),
    );
  }
}
