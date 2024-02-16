import 'package:cats_app/model/cat.dart';
import 'package:cats_app/screens/cats_details_screen.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {

final Cat cat;

  const CatCard({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatsDetailsScreen(cat: cat);
        }));
      },
      child: Card(child: Column(
        children: [
          Expanded(child: 
          Image.network(
            width: double.infinity,
            fit: BoxFit.cover,
            cat.imageLink,
            ),
          ),
          //Cat name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cat.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      )
      ),
    );
  }
}