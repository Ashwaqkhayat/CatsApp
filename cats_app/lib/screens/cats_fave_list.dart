import 'package:cats_app/main.dart';
import 'package:cats_app/widgets/cat_card.dart';
import 'package:flutter/material.dart';

class CatsFavoriteList extends StatelessWidget {
  const CatsFavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite Cats',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: fCats.length,
        itemBuilder: (context, index) {
          final fcat = fCats[index];
          return CatCard(cat: fcat);
        },
        ),
    );
  }
}