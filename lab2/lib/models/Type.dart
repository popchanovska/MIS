class Type {
  String type;

  Type({required this.type});

  factory Type.fromJson(String type) {
    return Type(type: type);
  }
}