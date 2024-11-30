import 'package:flutter/material.dart';
import 'package:laboratory1/models/Clothing.dart';

import '../widgets/detail_button.dart';
import '../widgets/detail_data.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Clothing;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.img),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailData(id: arguments.id, desc: arguments.desc, price: arguments.price),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}