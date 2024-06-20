import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/bill_details.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/cart_item.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/delivery_address.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/place_order_button.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/promo_code.dart';

class CartDetails extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => CartDetails());

  final List<CartItemData> cartItems = [
    CartItemData(
        imageUrl: 'assets/images/todays_pick.png',
        name: 'Kacchi Biriyani',
        price: 400,
        quantity: 1),
    CartItemData(
        imageUrl: 'assets/images/todays_pick.png',
        name: 'Deluxe Burger',
        price: 280,
        quantity: 2),
    CartItemData(
        imageUrl: 'assets/images/todays_pick.png',
        name: 'Pizza',
        price: 700,
        quantity: 3),
  ];

  CartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...cartItems.map((item) => CartItem(item: item)),
              const SizedBox(height: 20),
              const DeliveryAddress(),
              const SizedBox(height: 20),
              const PromoCode(),
              const SizedBox(height: 20),
              BillDetails(cartItems: cartItems),
              const SizedBox(height: 20),
              const PlaceOrderButton(),
            ],
          ),
        ),
      ),
    );
  }
}
