
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .color(Colors.lime.shade100)
        .px12
        .py1
        .roundedSM
        .make()
        .p12()
        .whPCT(context: context, widthPCT: 45, heightPCT: 100);
  }
}
