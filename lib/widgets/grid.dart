import 'package:flutter/material.dart';
import 'package:laboratory1/models/Clothing.dart';

import 'card.dart';
// import 'package:laboratory1/widgets/pokemon_card.dart';

class ClothingGrid extends StatefulWidget {
  final List<Clothing> clothing;
  const ClothingGrid({super.key, required this.clothing});
  @override
  _ClothingGridState createState() => _ClothingGridState();
}
class _ClothingGridState extends State<ClothingGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.clothing.map((pokemon) =>
          ClothingCard(id: pokemon.id, name: pokemon.name, image: pokemon.img),
      ).toList(),
    );
  }
}