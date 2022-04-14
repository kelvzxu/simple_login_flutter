import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_login_flutter/component/card.dart';

class WalletSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 100,
      ),
      items: [
        Expanded(
            child: CarouselCard(
              CardImage: Image.network(
                'https://play-lh.googleusercontent.com/xV6gK4t0SF7AW4LK3slUzj4WIY1SfzRtq-zFTygFSO9wg-JXTJImEi34rrxhsRutXQ',
              ),
              CardTitle: 'AliPay',
              CardSubtitle: NumberFormat.simpleCurrency(locale: 'id')
                  .format(1500),
            )
        ),
        Expanded(
            child: CarouselCard(
              CardImage: Image.asset(
                'Asset/images/bca.png',
              ),
              CardTitle: 'BCA',
              CardSubtitle: NumberFormat.simpleCurrency(locale: 'id')
                  .format(2500),
            )
        ),
        Expanded(
            child: CarouselCard(
              CardImage: Image.network(
                'https://www.flokq.com/blog/wp-content/uploads/2020/05/0.png',
              ),
              CardTitle: 'GoPay',
              CardSubtitle: NumberFormat.simpleCurrency(locale: 'id')
                  .format(3500),
            )
        ),
      ],
    );
  }

}