import 'package:universal_ecommerce_ui/import.dart';

class BasketItemModel {
  final int id;
  final int quantity;
  final MenuModel product;

  BasketItemModel({
    required this.id,
    required this.quantity,
    required this.product,
  });
}

final List<BasketItemModel> basketDemo = [
  BasketItemModel(
    id: 0,
    quantity: 1,
    product: menuDemo[0],
  ),
  BasketItemModel(
    id: 1,
    quantity: 1,
    product: menuDemo[1],
  ),
  BasketItemModel(
    id: 2,
    quantity: 1,
    product: menuDemo[2],
  ),
  BasketItemModel(
    id: 3,
    quantity: 1,
    product: menuDemo[0],
  ),
  BasketItemModel(
    id: 4,
    quantity: 1,
    product: menuDemo[1],
  ),
  BasketItemModel(
    id: 5,
    quantity: 1,
    product: menuDemo[2],
  )
];
