import 'package:flutter/material.dart';

class AddOnItem {
  final String imageUrl;
  final String name;
  final int price;
  int quantity;

  AddOnItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.quantity = 0,
  });
}

class AddOns extends StatelessWidget {
  final List<AddOnItem> addOns;

  const AddOns({super.key, required this.addOns});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Add Ons',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ...addOns.map((addOn) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Image.asset(addOn.imageUrl,
                    width: 60, height: 60, fit: BoxFit.cover),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(addOn.name, style: const TextStyle(fontSize: 16)),
                    Text('Tk ${addOn.price}',
                        style: const TextStyle(color: Colors.red)),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        if (addOn.quantity > 0) {
                          addOn.quantity--;
                        }
                      },
                    ),
                    Text(addOn.quantity.toString().padLeft(2, '0')),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        addOn.quantity++;
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
