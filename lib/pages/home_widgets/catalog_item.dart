
import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.imageUrl),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.color(MyThemes.darkBluishColor).lg.bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyThemes.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder(),)
                      ),
                      child: "Buy".text.make(),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    )).rounded.white.square(150).make().py12();
  }
}
