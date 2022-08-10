class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        imageUrl: map["imageUrl"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageUrl": imageUrl
      };
}

// class Item {
//   late int id;
//   late String name;
//   late String desc;
//   late num price;
//   late String color;
//   late String imageUrl;

//   Item(
//       {required this.id,
//       required this.name,
//       required this.desc,
//       required this.price,
//       required this.color,
//       required this.imageUrl});

//   Item.fromMap(Map<String, dynamic> map) {
//     Item(
//         id: map["id"],
//         name: map["name"],
//         desc: map["desc"],
//         price: map["price"],
//         color: map["color"],
//         imageUrl: map["imageUrl"]);
//   }
// }
