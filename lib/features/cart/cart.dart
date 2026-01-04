import 'package:clothes_e_shop/features/home/view.dart';
import 'package:flutter/material.dart';
import '../../core/resources/app_colors.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return HomeView();
                }));
          },
            child: Icon(Icons.arrow_back)),
        title: Text("My Cart", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: primaryTextColor
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CartItem()
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset("assets/images/t-shirt.png"),
          Column(
            children: [
              Column(
                children: [
                  Text("T-Shirt"),
                  Text("Size L"),
                ],
              ),
              Text("\$ 1,190"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.delete, color: Colors.red,),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.exposure_minus_1),
                  ),
                  Text("2"),
                  Container(
                    child: Icon(Icons.exposure_plus_1),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
