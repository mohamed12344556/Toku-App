import 'package:flutter/material.dart';
import 'package:toku_project/components/phraseItem.dart';
import 'package:toku_project/models/itemmodel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> numlist = const [
    ItemModel(
        jpName: "jpName",
        enName: "Father",
        audiopath: "sounds/family_members/father.wav"),
    ItemModel(
        jpName: "jpName",
        enName: "Mother",
        audiopath: 'sounds/family_members/mother.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Son",
        audiopath: 'sounds/family_members/son.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Daughter",
        audiopath: 'sounds/family_members/daughter.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Older Brother",
        audiopath: 'sounds/family_members/older bother.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Older Sister",
        audiopath: 'sounds/family_members/older sister.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Younger Brother",
        audiopath: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Younger Sister",
        audiopath: 'sounds/family_members/younger sister.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Grandfather",
        audiopath: 'sounds/family_members/grand father.wav'),
    ItemModel(
        jpName: "jpName",
        enName: "Grandmother",
        audiopath: 'sounds/family_members/grand mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF49332A),
        ),
        body: ListView.builder(
          itemCount: numlist.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: const Color(0xFF47A5CB),
              itemphase: numlist[index],
            );
          },
        ));
  }

/* List<Widget> getlist(List<Number> numList) {
    List<Items> itemlist = [];

    for (int i = 0; i < numList.length; i++) {
      itemlist.add(Items(
        number:  numlist[i],
      ));
    }
    return itemlist;
  }*/
}
