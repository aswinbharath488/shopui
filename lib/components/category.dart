import 'package:flutter/material.dart';
import 'package:shopui/components/card_button.dart';
import 'package:shopui/constants.dart';
import 'package:shopui/model/Category.dart';

class Catergories extends StatelessWidget {
  const Catergories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        demo_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: CardButton(
            title: demo_categories[index].title,
            icon: demo_categories[index].icon,
            fun: () {},
          ),
        ),
      )),
    );
  }
}
