import 'package:flutter/material.dart';
import 'package:toku_project/components/item.dart';
import 'package:toku_project/models/itemmodel.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> numlist = const [
    ItemModel(
        image: "assets/images/family_members/family_father.png",
        jpName: "jpName",
        enName: "Father",
        audiopath: "sounds/family_members/father.wav"),
    ItemModel(
        image: "assets/images/family_members/family_mother.png",
        jpName: "jpName",
        enName: "Mother",
        audiopath: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: "assets/images/family_members/family_son.png",
        jpName: "jpName",
        enName: "Son",
        audiopath: 'sounds/family_members/son.wav'),
    ItemModel(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "jpName",
        enName: "Daughter",
        audiopath: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "jpName",
        enName: "Older Brother",
        audiopath: 'sounds/family_members/older bother.wav'),
    ItemModel(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "jpName",
        enName: "Older Sister",
        audiopath: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "jpName",
        enName: "Younger Brother",
        audiopath: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "jpName",
        enName: "Younger Sister",
        audiopath: 'sounds/family_members/younger sister.wav'),
    ItemModel(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "jpName",
        enName: "Grandfather",
        audiopath: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: "assets/images/family_members/family_grandmother.png",
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
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF49332A),
        ),
        body: ListView.builder(
          itemCount: numlist.length,
          itemBuilder: (context, index) {
            return Items(
              color: const Color(0xFF528032),
              itemModel: numlist[index],
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
