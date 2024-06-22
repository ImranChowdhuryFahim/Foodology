import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';
import 'package:foodology/features/dashboard/restaurant/presentation/widgets/dots_indicator.dart';

class AddMenuPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => AddMenuPage());
  AddMenuPage({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Add image",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const DotsIndicator(),
                const SizedBox(height: 16),
                CustomInput(controller: _nameController, label: 'Name'),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(controller: _categoryController, label: 'Category'),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(
                    controller: _priceController, label: 'Price(per serving)'),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(
                    controller: _descriptionController, label: 'Description'),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add to List",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
