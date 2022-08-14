import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key("${catalog.id} image"),
              child: Image.network(catalog.imageUrl),
            ).h40(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Theme.of(context).cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text
                          .color(context.accentColor)
                          .xl4
                          .bold
                          .make(),
                      catalog.desc.text.color(Theme.of(context).indicatorColor)
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "As one and both and then no or obeisance i. I raven off dirges while the. I this the name radiant many, a fast unbrokenquit oer and bird tapping see the tell. When dreams that grim tossed and nothing thee. My shore this if bust tell chamber all, fancy flirt."
                          .text.color(Theme.of(context).indicatorColor)
                          .textStyle(context.captionStyle)
                          .make().px12(),
                    ],
                  ).pSymmetric(v: 50, h: 10),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .color(MyThemes.darkBluishColor)
                .bold
                .xl3
                .red600
                .make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Add to cart".text.make(),
            ).wh(120, 45)
          ],
        ).pSymmetric(h: 30, v: 15),
      ),
    );
  }
}
