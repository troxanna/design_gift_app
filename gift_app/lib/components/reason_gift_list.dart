import 'package:flutter/material.dart';
import 'package:gift_app/components/item_reason_gift.dart';
import 'package:gift_app/gen/assets.gen.dart';

class ReasonGiftList extends StatelessWidget {
  ReasonGiftList({super.key});

  final List<String> icons = <String>[
    Assets.images.icons.balloonIcon,
    Assets.images.icons.giftIcon,
    Assets.images.icons.flowersIcon,
    Assets.images.icons.champagneIcon,
    Assets.images.icons.balloonIcon
  ];

  final List<String> titles = <String>[
    'День\nРождения',
    'День Святого\nВалентина',
    'Международный\nЖенский день',
    'Новый год',
    'День защитника\nотечества',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: icons.length,
      itemBuilder: (BuildContext context, int index) {
        return ReasonGiftItem(
            icon: icons[index],
            title: titles[index],
          );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        width: 35,
      ),
    );
  }
}
