import 'package:flutter/material.dart';

class RealestateCard extends StatelessWidget {
  const RealestateCard({
    Key? key,
    required this.title,
    required this.image,
    required this.area,
    required this.price,
    required this.nearestPoint,
  }) : super(key: key);
  final String title;
  final String image;
  final String nearestPoint;
  final int area;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.30),
              offset: const Offset(0, 1),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          )),
      height: 160,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            height: double.infinity,
            width: 150,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Image.network(
                image,
                scale: 1.0,
                fit: BoxFit.cover,
                width: 140,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardDetailsWidget(title: "العنوان:  ", value: title),
                  CardDetailsWidget(title: "المساحة:  ", value: area),
                  CardDetailsWidget(title: "السعر:  ", value: price),
                  CardDetailsWidget(title: "اقرب نقطة:  ", value: nearestPoint),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Flexible(
          child: Container(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              "$value",
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
