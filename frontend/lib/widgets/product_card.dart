import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isLiked;
  final VoidCallback? onLikePressed;
  final VoidCallback? onAddToCartPressed;
  final VoidCallback? onTap;

  ProductContainer({
    required this.imageUrl,
    required this.name,
    required this.isLiked,
    this.onLikePressed,
    this.onAddToCartPressed,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageUrl,
              height: 150,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                  onPressed: onLikePressed,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: onAddToCartPressed,
                    child: Text("Add to Cart"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      fixedSize: Size(120, 12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
