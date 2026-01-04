import 'package:clothes_e_shop/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Details",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 4,
            children: [
              Image.asset("assets/images/t-shirt.png"),
              Text(
                "Fit Polo T Shirt",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Row(
                spacing: 4,
                children: [
                  Icon(Icons.star_rounded, color: Color(0xffFFA928)),
                  Text(
                    "4.0/5",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryTextColor,
                    ),
                  ),
                  Text(
                    "(45 reviews)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: secondaryTextColor,
                    ),
                  ),
                ],
              ),
              Text(
                "Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 12,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: secondaryTextColor,
                  ),
                ),
                Text(
                  "\$ 1,190",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(0, 18, 0, 18),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_outlined, color: Colors.white),
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
