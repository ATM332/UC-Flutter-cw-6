import 'package:cw6/models/buildings.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.building});

 final Buildings building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(building.imgUrl),
        Text(building.name),
        Text(building.description)

      
      ]),
    );
  }
}