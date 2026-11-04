
import '../models/product.dart';

class ProductData {
  static final List<Product> products = [
    Product(
      id: 1,
      name: 'Chocolate',
      price: 5.0,
      description: 'Delicious milk chocolate.',
      imageUrl: '',
    ),
    Product(
      id: 2,
      name: 'Chips',
      price: 3.5,
      description: 'Crispy potato chips.',
      imageUrl: '',
    ),
    Product(
      id: 3,
      name: 'Biscuits',
      price: 2.0,
      description: 'Fresh sweet biscuits.',
      imageUrl: '',
    ),
  ];
}
