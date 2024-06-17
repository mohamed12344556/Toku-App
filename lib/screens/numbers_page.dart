import 'package:flutter/material.dart';
import 'package:toku_project/components/item.dart';
import 'package:toku_project/generated/assets.dart';
import 'package:toku_project/models/itemmodel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numlist = const [
    ItemModel(
        image: "assets/images/numbers/number_one.png",
        jpName: "jpName",
        enName: "one",
        audiopath: "sounds/numbers/number_one_sound.mp3"),
    ItemModel(
        image: "assets/images/numbers/number_two.png",
        jpName: "jpName",
        enName: "two",
        audiopath: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_three.png",
        jpName: "jpName",
        enName: "three",
        audiopath: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_four.png",
        jpName: "jpName",
        enName: "four",
        audiopath: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: Assets.numbersNumberFour,
        jpName: "jpName",
        enName: "five",
        audiopath: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_six.png",
        jpName: "jpName",
        enName: "six",
        audiopath: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_seven.png",
        jpName: "jpName",
        enName: "seven",
        audiopath: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_eight.png",
        jpName: "jpName",
        enName: "eghit",
        audiopath: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_nine.png",
        jpName: "jpName",
        enName: "nine",
        audiopath: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: "assets/images/numbers/number_ten.png",
        jpName: "jpName",
        enName: "ten",
        audiopath: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: BackButton(color: Colors.white,),
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF49332A),
        ),
        body: ListView.builder(
          itemCount: numlist.length,
          itemBuilder: (context, index) {
            return Items(
              color: const Color(0xFFFF9F3B),
              itemModel: numlist[index],
            );
          },
        ));
  }

/*List<Widget> getlist(List<Number> numList) {
    List<Items> itemlist = [];

    for (int i = 0; i < numList.length; i++) {
      itemlist.add(Items(
        number:  numlist[i],
      ));
    }
    return itemlist;
  }*/
}
