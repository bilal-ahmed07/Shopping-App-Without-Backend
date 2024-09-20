import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      
      margin: const EdgeInsets.all(20),
      color: backgroundColor,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(
              height: 5,
            ),
            Text("\$$price", style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Image.asset(
                image,
                height: 175,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
