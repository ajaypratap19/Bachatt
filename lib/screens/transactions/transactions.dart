import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  //small card
  smallCard(double shadowElevation, String cardHeading, String amount,
      Color cardColor) {
    return Card(
      color: cardColor,
      elevation: shadowElevation,
      shadowColor: Colors.black,
      child: SizedBox.square(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardHeading,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\u{20B9}$amount.00',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Icon(
                    Icons.wallet,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            )
          ],
          title: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Transactions',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                //Balance Card
                Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox.square(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 8, top: 15),
                          child: Text(
                            'Total Balance',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        //total balance in words
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 8, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '\u{20B9}10,500',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 36),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.arrow_circle_up,
                                    color: Colors.green,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '2.5%',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '(\u{20B9}500)',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        //withdraw tab
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFF3a0ea3),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            children: [
                              Text(
                                'Withdraw to bank account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //Tab groups
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    smallCard(
                      5,
                      'Total Savings',
                      '10,500',
                      Color.fromARGB(255, 225, 245, 227),
                    ),
                    smallCard(
                      5,
                      'Total Withdrawals',
                      '2,500',
                      Color.fromARGB(255, 237, 231, 251),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
