import 'package:flutter/material.dart';
import 'package:toku_project/components/category_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF49332A),
      ),
      body: Container(
        color: const Color(0xFFFCF1D6),
        child: Column(
          children: [
            Cotegary(
              text: 'Numbers',
              color: const Color(0xFFF99531),
              onTap: () {
                Navigator.pushNamed(context, 'Numbers');
              },
            ),
            Cotegary(
              text: 'Family Members',
              color: const Color(0xFF528032),
              onTap: () {
                Navigator.pushNamed(context, 'Family Members');
              },
            ),
            Cotegary(
              text: 'Colors',
              color: const Color(0xFF7D40A2),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        title: Text("Important"),
                        content: Text("This feature is under development"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Sorry💔🥲"),
                          ),
                        ]);
                  },
                );
              },
            ),
            Cotegary(
              text: 'Phrases',
              color: const Color(0xFF47A5CB),
              onTap: () {
                Navigator.pushNamed(context, "Phrases");
              },
            ),
          ],
        ),
      ),
    );
  }
}
