import 'package:flutter/material.dart';
import 'package:gift_app/components/item_segmented_control.dart';
import 'package:gift_app/gen/assets.gen.dart';

class SegmentedControl extends StatelessWidget {
  SegmentedControl({super.key});

  final List<String> icons = <String>[
    Assets.images.icons.filterIcon,
    Assets.images.icons.flowerIcon,
    Assets.images.icons.candyIcon,
    Assets.images.icons.cakeIcon,
  ];

  final List<String> titles = <String>[
    '',
    'Цветы',
    'Конфеты',
    'Торты',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: icons.length,
      itemBuilder: (BuildContext context, int index) {
        if (index != 0) {
          return SegmentedItem(
            icon: icons[index],
            title: titles[index],
          );
        } else {
          return SegmentedItem(icon: icons[index]);
        }
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        width: 10,
      ),
    );
  }
}
