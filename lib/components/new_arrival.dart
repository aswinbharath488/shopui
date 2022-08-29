import 'package:flutter/material.dart';
import 'package:shopui/components/product_card.dart';
import 'package:shopui/components/row_text.dart';
import 'package:shopui/constants.dart';
import 'package:shopui/model/Product.dart';
import 'package:shopui/screens/details_page.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowText(
          title: "New Arrival",
          buttonText: "See All",
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: ProductCard(
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        product: demo_product[index])));
                          },
                          img: demo_product[index].image,
                          title: demo_product[index].title,
                          price: demo_product[index].price,
                          bgColor: demo_product[index].bgColor),
                    )),
          ),
        ),
      ],
    );
  }
}
