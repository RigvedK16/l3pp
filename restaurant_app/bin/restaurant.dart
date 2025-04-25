// ignore_for_file: unused_import, duplicate_ignore

import 'package:first/backend.dart';
import 'package:first/menu.dart';
import 'package:first/cart.dart';
// ignore: unused_import
import 'dart:io';

void main(List<String> arguments) {
  Backend res = Backend();
  res.displayMenu();

  bool placeOrder = false;
  while (!placeOrder) {
    String? inputString = stdin.readLineSync();
    if (inputString == 'X' || inputString == 'x') {
      placeOrder = true;
    }

    int? input = int.tryParse(inputString?.trim() ?? '');
    if (input != null) {
      res.addToCart(input);
      res.displayCart();
    }
  }
  res.totalPrice();
}
