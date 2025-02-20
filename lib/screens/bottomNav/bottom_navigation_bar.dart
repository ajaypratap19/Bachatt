import 'package:bachatt/screens/screens.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int pageIndex = 0;
  final pages = [HomeScreen(), Transactions(), AccountScreen(), OffersScreen()];

  //Bottom Tab Design
  iconDesign(
    int tabIndex,
    IconData icon,
    String tabName,
  ) {
    return Column(
      children: [
        pageIndex == tabIndex
            ? Container(
                width: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(color: Color(0xFF3a0ea3), width: 3),
                  ),
                ),
              )
            : Container(),
        IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = tabIndex;
              });
            },
            icon: pageIndex == tabIndex
                ? Column(
                    children: [
                      Icon(
                        icon,
                        color: Color(0xFF3a0ea3),
                        size: 22,
                      ),
                      Text(
                        tabName,
                        style: TextStyle(
                            color: Color(0xFF3a0ea3),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                : Column(
                    children: [
                      Icon(
                        icon,
                        color: Colors.grey,
                        size: 22,
                      ),
                      Text(
                        tabName,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.zero,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Home Tab
          iconDesign(0, Icons.home_filled, 'Home'),
          //Transactions Tab
          iconDesign(1, Icons.account_balance, 'Transactions'),
          //Account Tab
          iconDesign(2, Icons.menu_book_sharp, 'Accounts'),
          //Offers Tab
          iconDesign(3, Icons.currency_rupee, 'Offers')
        ],
      ),
    );
  }
}
