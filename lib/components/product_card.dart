import 'package:flutter/material.dart';
import 'package:shopui/constants.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.img,
    required this.title,
    required this.price,
    required this.bgColor,
    required this.onPress,
  }) : super(key: key);
  final String img;
  final String title;
  final int price;
  final Color bgColor;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
        width: 154,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius))),
              child: Image.asset(
                img,
                height: 130,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: defaultPadding / 4,
                ),
                Text(
                  '\$ ${price.toString()}',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
