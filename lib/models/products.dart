// class ProductsModel {
//   static List<Products> items = [
//     Products(
//         id: 1,
//         name: "iPhone 12 Pro",
//         desc: "Apple iPhone 12th generation",
//         price: 999,
//         color: "#33505a",
//         imageUrl:
//             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
//   ];
// }

class Products {
  int? id;
  String? name;
  String? desc;
  int? price;
  String? color;
  // String? imageUrl;

  Products({this.id, this.name, this.desc, this.price, this.color});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    price = json['price'];
    color = json['color'];
    // imageUrl = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['color'] = this.color;
    // data['image'] = this.imageUrl;
    return data;
  }
}
