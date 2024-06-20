import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/cart_item.dart';

class BillDetails extends StatelessWidget {
  final List<CartItemData> cartItems;

  const BillDetails({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    double productPrice =
        cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
    double deliveryCharge = 50; // example fixed delivery charge
    double totalAmount = productPrice + deliveryCharge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Bill Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text('Product Price: Tk $productPrice'),
        Text('Delivery Charge: Tk $deliveryCharge'),
        const SizedBox(height: 10),
        Text('Total Amount: Tk $totalAmount',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
