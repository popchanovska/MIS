import 'package:flutter/material.dart';
import 'package:laboratory1/models/Clothing.dart';
import 'package:laboratory1/widgets/card_data.dart';

class ClothingCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String desc;
  final double price;

  const ClothingCard({super.key, required this.id, required this.name, required this.image, required this.desc, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(2),
        enableFeedback: true,
        splashColor: Colors.white,
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothing(id: id, name: name, img: image, desc: desc, price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(2)
          ),
          child: ClothingCardData(image: image, name: name),
        ),
      ),
    );
  }
}