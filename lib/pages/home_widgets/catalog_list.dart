
import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';

import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Item catalog = CatalogModel.items[index];
        return CatalogItem(
          catalog: catalog,
        );
      },
      itemCount: CatalogModel.items.length,
    );
  }
}
