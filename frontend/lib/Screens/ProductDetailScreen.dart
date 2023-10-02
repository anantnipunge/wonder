import 'package:flutter/material.dart';
import 'package:frontend/Models/Category.dart';

import '../constants/constants.dart';
// import 'package:frontend/Models/Product.dart';

class ProductDetail extends StatefulWidget {
  final Category categories;
  const ProductDetail({super.key, required this.categories});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // CarouselWithIndicatorDemo(),
              Center(
                child: Image.asset(
                  widget.categories.imgurl, // Use a default value if categories is null
                  height: 250,
                  width: 250,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                height: 600,
                width: 500,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          widget.categories.title,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text('1 each'),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // CounterDesign(
                        //   price: widget.categories.price,
                        // ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Text(
                          'Product Description',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          widget.categories.description,
                          style: const TextStyle(
                            letterSpacing: 2.0,
                            fontSize: 15.0,
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: <Widget>[
                            ButtonTheme(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              splashColor: kMainDarkColor,
                              height: 70.0,
                              minWidth: 260.0,
                              child: FilledButton(
                                onPressed: () {},
                                child: const Text(
                                  'Go to AR View',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            ButtonTheme(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 70.0,
                              minWidth: 260.0,
                              child: FilledButton(
                                onPressed: () {},
                                child: const Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Row(
        children: <Widget>[
          const SizedBox(
            width: 5.0,
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: !_isFavorited
              ? const Icon(
                  Icons.favorite_border,
                )
              : const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
          onPressed: _toggleFavorite,
        ),
      ],
    );
  }
}
