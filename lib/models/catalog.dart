class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
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
