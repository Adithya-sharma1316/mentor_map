import 'package:flutter/material.dart';
import 'package:mentor_map/widgets/custom_card.dart';

class Tabs4 extends StatelessWidget {
  const Tabs4(
      {super.key,
      required this.tab1,
      required this.tab2,
      required this.tab3,
      required this.tab4});
  final String tab1;
  final String tab2;
  final String tab3;
  final String tab4;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomCard(
            left: 0,
            right: 0,
            width: 85,
            height: 50,
            child: Center(child: Text(tab1))),
        CustomCard(
            left: 0,
            right: 0,
            width: 85,
            height: 50,
            child: Center(child: Text(tab2))),
        CustomCard(
            left: 0,
            right: 0,
            width: 85,
            height: 50,
            child: Center(child: Text(tab3))),
        CustomCard(
          left: 0,
          right: 0,
          width: 85,
          height: 50,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(tab4),
                ),
                const Icon(Icons.expand_more_rounded)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
