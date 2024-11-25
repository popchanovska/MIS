import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;

  const DetailData({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 2, color: Colors.grey)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: const Column(
        children: [
          Text('zdravo', style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text('ana', style: const TextStyle(fontSize: 20, color: Colors.black),
          )
        ],
      ),
    );
  }
}