import 'package:flutter/material.dart';
import 'package:shopui/components/product_card.dart';
import 'package:shopui/components/row_text.dart';
import 'package:shopui/constants.dart';
import 'package:shopui/model/product.dart';
import 'package:shopui/screens/details_page.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowText(
          title: "Popular",
          buttonText: "See All",
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demoproduct.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: ProductCard(
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        product: demoproduct[index])));
                          },
                          img: demoproduct[index].image,
                          title: demoproduct[index].title,
                          price: demoproduct[index].price,
                          bgColor: demoproduct[index].bgColor),
                    )),
          ),
        ),
      ],
    );
  }
}
