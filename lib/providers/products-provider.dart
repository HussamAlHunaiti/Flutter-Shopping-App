import 'package:flutter/material.dart';

import './product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Red shirt',
        desciption: 'A red T-shirt made in Jordan',
        imageUrl:
            'https://cdn.shopify.com/s/files/1/1722/6451/products/pretydope-sensationsfont-copy_mockup_Front_Wrinkled_Red_1024x1024.png?v=1555297787',
        price: 29.99),
    Product(
        id: 'p2',
        title: 'Gentl brown suit',
        desciption: 'A Gentl brown suit made in Jordan',
        imageUrl:
            'https://devonche.com/wp-content/uploads/2019/12/dark-mocha-brown-suit-e1583883563978.jpg',
        price: 64.99),
    Product(
        id: 'p3',
        title: 'Black shoes',
        desciption: 'A Black shoes made in Jordan',
        imageUrl:
            'https://cdn.shopify.com/s/files/1/1417/8980/products/Full-Grain-leather-shoes_1024x1024@2x.jpg?v=1559175699',
        price: 34.99),
    Product(
        id: 'p4',
        title: 'Black Jacket',
        desciption: 'A Black Jacket made in Jordan',
        imageUrl:
            'https://im.uniqlo.com/images/common/pc/goods/422986/item/09_422986.jpg',
        price: 49.99),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prod) => prod.isFavorite).toList();
  }

  Product findById(productId) {
    return _items.firstWhere((prod) => prod.id == productId);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
