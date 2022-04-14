import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_login_flutter/Screen/dashboard/Component/wallet_slider.dart';
import 'package:simple_login_flutter/component/card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     "Wallet",
              //     style:
              //     TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              //   ),
              // ),
              // WalletSlider(),

              // Last Records Overview
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Message History",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),

              MessageCard(
                  UserName: "Santika",
                  LastMessage: "One of the reviews must come a..",
                  UserImage: Image.asset(
                    'Asset/images/0100258.png',
                  ),
                  LastDate: "Today"),
              MessageCard(
                  UserName: "Angel Ve Limierta",
                  LastMessage: "Hello Please Send Your Quotatio..",
                  UserImage: Image.asset(
                    'Asset/images/0100255.png',
                  ),
                  LastDate: "Today"
              ),
              MessageCard(
                  UserName: "Michelle Japari",
                  LastMessage: "Morning Sir, Server can't be Acc..",
                  UserImage: Image.asset(
                    'Asset/images/0100256.png',
                  ),
                  LastDate: "Today"),
              MessageCard(
                  UserName: "Febrina",
                  LastMessage: "Hello Sir, Please review my Pul..",
                  UserImage: Image.asset(
                    'Asset/images/0100257.png',
                  ),
                  LastDate: "Today"),

            ],
          ),
        ),
      ),
    );
  }
}