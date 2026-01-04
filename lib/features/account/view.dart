import 'package:clothes_e_shop/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        leading: Icon(Icons.arrow_back),
        title: Text("Account", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: primaryTextColor
        ),),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Color(0xffE6E6E6),
            width: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                AccountItem(icon: Icon(Icons.reorder), item: "My Orders"),
                Container(height: 8, color: Color(0xffAAAAAA),),
                AccountItem(icon: Icon(Icons.person_outline), item: "My Details"),
                AccountItem(icon: Icon(Icons.home_outlined), item: "Address Book"),
                AccountItem(icon: Icon(Icons.question_mark_rounded), item: "FAQs"),
                AccountItem(icon: Icon(Icons.headphones), item: "Help Center"),
                Container(height: 8, color: Color(0xffE6E6E6),),
              ],
            ),
            LogoutItem(),
          ],
        ),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
    required this.icon,
    required this.item,
  });

  final Icon icon;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 24, 12, 24),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE6E6E6),
            width: 1,
          )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 4,
            children: [
              icon,
              Text(item, style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: primaryTextColor,
              ),),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Color(0xffB3B3B3), size: 20,),
        ],
      ),
    );
  }
}

class LogoutItem extends StatelessWidget {
  const LogoutItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 24, 12, 24),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: Color(0xffE6E6E6),
              width: 1,
            )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 4,
            children: [
              Icon(Icons.logout, color: Colors.red,),
              Text("Logout", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.red,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}