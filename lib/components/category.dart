import 'package:flutter/material.dart';
import 'package:shopui/components/card_button.dart';
import 'package:shopui/constants.dart';
import 'package:shopui/model/category.dart';

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
        democategories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: CardButton(
            title: democategories[index].title,
            icon: democategories[index].icon,
            fun: () {},
          ),
        ),
      )),
    );
  }
}
