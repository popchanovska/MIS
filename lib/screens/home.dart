import 'package:flutter/material.dart';

import '../models/Clothing.dart';
import '../widgets/grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothing> clothing = [
    Clothing(
      id: 1,
      name: "Nike Hoodie",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/db6eea68-6b85-4d41-9103-5033b804b5bc/W+NSW+NK+CHLL+FT+FZ+HDY.png",
    ),
    Clothing(
      id: 2,
      name: "Nike Swift UV",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3f17de78-78f7-40f3-abc1-1f154e499f48/W+NK+SWIFT+UV+JKT.png",
    ),
    Clothing(
      id: 3,
      name: "Nike One",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7db58f5e-b1e2-4dc9-8639-c386a4b0be8e/W+NK+ONE+SWH+HB+DF+MR+BR+SRT.png",
    ),
    Clothing(
      id: 4,
      name: "Nike V2K Run",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4d59bbbb-9c20-44fe-b0eb-7cdbe7e029b5/W+NIKE+V2K+RUN.png",
    ),
    Clothing(
      id: 5,
      name: "Nike Ultrafly",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7a7d32fe-76ec-4ab6-9d7c-d3a38068917f/NIKE+ZOOMX+ULTRAFLY+TRAIL.png",
    ),
    Clothing(
      id: 6,
      name: "Nike Chill Terry",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b089e0b2-e937-4ba7-9053-dc3ab3391d6b/W+NSW+NK+CHLL+FT+CRP+HZ+TANK.png",
    ),
    Clothing(
      id: 7,
      name: "Nike Sportswear",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d65d1c4f-b160-4d3d-93a3-6a9e2dc00b0e/W+NSW+LS+TOP+SW.png",
    ),
    Clothing(
      id: 8,
      name: "Nike x Jacquemus",
      img: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/db1bbe4f-8714-491e-afe8-775af1885d7c/W+NRG+JACQUEMUS+BRA.png",
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF5D8B60),
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("211011", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothingGrid(clothing: clothing),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}