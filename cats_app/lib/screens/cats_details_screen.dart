
import 'package:cats_app/main.dart';
import 'package:cats_app/model/cat.dart';
import 'package:cats_app/widgets/cat_detail.dart';
import 'package:flutter/material.dart';

class CatsDetailsScreen extends StatefulWidget {
  final Cat cat;
  const CatsDetailsScreen({super.key, required this.cat});

  @override
  State<CatsDetailsScreen> createState() => _CatsDetailsScreenState();
}

class _CatsDetailsScreenState extends State<CatsDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat.name,
        style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [IconButton(
          onPressed: (){
            // Update isFavorite state and trigger widget rebuild
            setState(() {
              widget.cat.isFave = !widget.cat.isFave;

              //if cat is in faves then remove it, and add it otherwise
              // ===================================
              if(widget.cat.isFave && !fCats.contains(widget.cat)){
                fCats.add(widget.cat);
              } else {
                fCats.remove(widget.cat);
              }
              //====================================

            });
          },
          icon: Icon(
            Icons.favorite,
            // Ternary operator for dynamic color based on isFavorite
            color: widget.cat.isFave ? Colors.red : Colors.black,
          ),
        ),
        ],
      ),
      body: CatDetailWidget(cat: widget.cat),
    );
  }
}

