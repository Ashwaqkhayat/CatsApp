
import 'package:cats_app/main.dart';
import 'package:cats_app/screens/cats_fave_list.dart';
import 'package:cats_app/widgets/cat_card.dart';
import 'package:flutter/material.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cats',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [IconButton(onPressed: (){
          // Open favorite list UI
          //===================================
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const CatsFavoriteList();
          }));
          //===================================
        }, icon: const Icon(Icons.favorite, color: Colors.white,))],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(cat: cat);
        },
        ),
    );
  }
}

