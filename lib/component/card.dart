import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CarouselCard extends StatelessWidget {
  final String CardTitle;
  final String CardSubtitle;
  final Widget CardImage;

  const CarouselCard({
    Key? key,
    required this.CardTitle,
    required this.CardSubtitle,
    required this.CardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CardImage,
          ),
          title: Text(CardTitle),
          subtitle: Text(CardSubtitle),
          onTap: () {},
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String UserName;
  final String LastMessage;
  final Widget UserImage;
  final String LastDate;

  const MessageCard({
    Key? key,
    required this.UserName,
    required this.LastMessage,
    required this.UserImage,
    required this.LastDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(UserName),
        subtitle: Text(LastMessage),
        leading: UserImage,
        trailing: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(top: 8.0, bottom: 3.0),
              child: Text(LastDate),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}