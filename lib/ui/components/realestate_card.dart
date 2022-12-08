import 'package:flutter/material.dart';

class RealestateCard extends StatelessWidget {
  const RealestateCard({
    Key? key,
    required this.title,
    required this.image,
    required this.area,
  }) : super(key: key);
  final String title;
  final String image;
  final int area;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      height: 160,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      // padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
              Radius.circular(8),
            )),
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
                  Text("$title"),
                  Text("$area"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
