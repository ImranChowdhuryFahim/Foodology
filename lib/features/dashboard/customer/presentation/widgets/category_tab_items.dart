import 'package:flutter/material.dart';

class CategoryTabItems extends StatelessWidget {
  final List<Map<String, dynamic>> categories;

  const CategoryTabItems({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: TabBarView(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: category['items'].length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.asset(
                            category['items'][index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            category['items'][index]['name'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
