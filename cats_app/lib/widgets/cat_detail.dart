import 'package:cats_app/model/cat.dart';
import 'package:flutter/material.dart';

class CatDetailWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailWidget({
    super.key,
    required this.cat,
  });

  @override
  State<CatDetailWidget> createState() => _CatDetailWidgetState();
}

class _CatDetailWidgetState extends State<CatDetailWidget> {

  bool isNameColored = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Cat image
        Image.network(widget.cat.imageLink),
        // Cat name
        Text(widget.cat.name,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: isNameColored ? Colors.deepPurple : Colors.black,
          ),
        ),
        // Cat info
        Text('Origin : ${widget.cat.origin}'),
        Text('MaxWeight : ${widget.cat.maxWeight}'),
        Text('MinWeight : ${widget.cat.minWeight}'),
        Text('Length: ${widget.cat.length}'),
        Text('Intelligence : ${widget.cat.intelligence}'),
        ElevatedButton(onPressed: (){
          setState(() {
            isNameColored = !isNameColored;
          });
        }, child: const Text('Change Name Color'))
      ],
    );
  }
}
