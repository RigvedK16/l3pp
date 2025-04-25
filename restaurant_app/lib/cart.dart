class Cart {
  int id;
  String name;
  int price;
  int quantity;

  Cart({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 0,
  });
}
