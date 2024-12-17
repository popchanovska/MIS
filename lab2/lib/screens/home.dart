import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/Type.dart';
import '../services/service.dart';
import '../widgets/types/TypeGrid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Type> types = [];

  @override
  void initState() {
    super.initState();
    getTypeFromApi();
  }

  void getTypeFromApi() async {
    ApiService.getTypes().then((response) {
      var data = List.from(json.decode(response.body));
      setState(() {
         types = data.map((type)=>Type.fromJson(type as String)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24)),
        title: const Text("211011", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.white, size: 24))],
      ),
      body: TypeGrid(types: types),
    );
  }
}
