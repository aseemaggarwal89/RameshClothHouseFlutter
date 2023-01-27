enum OrderStatus{
  PLACED,
  CONFIRMED,
  SHIPPED,
  DELIVERED,
  CANCELLED
}

extension OrderStatusExtension on OrderStatus {
  static const orderStatusType = {
    OrderStatus.PLACED: 'PLACED',
    OrderStatus.CONFIRMED: 'CONFIRMED',
    OrderStatus.SHIPPED: 'SHIPPED',
    OrderStatus.DELIVERED: 'DELIVERED',
    OrderStatus.CANCELLED: 'CANCELLED',
 
  };

  String? get orderStatus => orderStatusType[this];
}