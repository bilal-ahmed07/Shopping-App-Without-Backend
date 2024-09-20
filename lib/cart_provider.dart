import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addproduct(Map<String, dynamic> product) {
    cart.add(product);
    notifyListeners();
  }
}