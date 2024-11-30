class Clothing {
  final int id;
  final String name;
  final String img;
  final String desc;
  final double price;

  Clothing({
    required this.id,
    required this.name,
    required this.img,
    required this.desc,
    required this.price,
  });

  factory Clothing.fromJson(Map<String, dynamic> data) {
    return Clothing(
      id: data['id'] ?? 0,
      name: data['name'] ?? '',
      img: data['img'] ?? '',
      desc: data['desc'] ?? '',
      price: (data['price'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'img': img,
    'desc': desc,
    'price': price,
  };
}
