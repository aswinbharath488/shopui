import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopui/constants.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.fun,
  }) : super(key: key);

  final String title, icon;
  final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}
