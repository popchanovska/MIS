
import 'package:flutter/material.dart';
import '../../models/Type.dart';

class TypeCardData extends StatelessWidget {
  final Type type;

  const TypeCardData({super.key, required this.type});

  @override
  Widget build(BuildContext context) {

    return Column(mainAxisSize: MainAxisSize.min,
      children: [
        // Expanded(child: Image.network(image, fit: BoxFit.contain)),
        const Divider(),
        Text(type.type, style: const TextStyle(
            color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w600
        ),)
      ],
    );
  }
}