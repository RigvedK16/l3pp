// ignore_for_file: avoid_print

class Dish {
  String name;
  int id, price;
  int quantity;
  String description;
  Dish({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    this.quantity = 0,
  });

  void printDish() {
    print('$id.$name............₹$price\n$description\n');
  }
}
