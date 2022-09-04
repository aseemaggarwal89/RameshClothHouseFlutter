// ignore_for_file: constant_identifier_names

enum OrderStatusType{
  PLACED, //user
  DEAL_BOOKED, //user - dealtype group buying
  PLACED_CANCELLED,
  ADDRESS_PENDING,
  PAYMENT_PENDING,
  CONFIRMED, // user
  CONFIRMED_CANCELLED,
  SHIPPED,
  SHIPPED_CANCELLED,
  DELIVERED, // user
  DELIVERY_REJECTED,
  RETURN_INITIATED,
  RETURN_REJECTED, //return rejected
  RETURN_APPROVED,
  PICKUP_IN_PROGRESS,
  PICKUP_REJECTED,
  PICKUP_DONE,
  REFUND_INITIATED, //refund in progress
  REFUND_PROCESSED,  //refund
  CANCELLED,
  QC_VERIFIED,
}