import 'package:flutter/material.dart';
import 'package:gift_app/components/gift_card.dart';
import 'package:gift_app/gen/assets.gen.dart';
import 'package:gift_app/models/gift_model.dart';

class GiftList extends StatelessWidget {
  GiftList({super.key});

  final List<GiftEntity> items = [
    GiftEntity(
      title: 'Родеком',
      image: Assets.images.images.cake.path,
      stars: LabelEntity(count: '4.8'),
      order: LabelEntity(count: '5000+'),
      comments: LabelEntity(count: '500+'),
    ),
    GiftEntity(
      title: 'Флория',
      image: Assets.images.images.cake.path,
      stars: LabelEntity(count: '4.8'),
      order: LabelEntity(count: '5000+'),
      comments: LabelEntity(count: '500+'),
    ),
    GiftEntity(
      title: 'КондитерМаг',
      image: Assets.images.images.cake.path,
      stars: LabelEntity(count: '4.8'),
      order: LabelEntity(count: '5000+'),
      comments: LabelEntity(count: '500+'),
    ),
    GiftEntity(
      title: 'Плумерия',
      image: Assets.images.images.cake.path,
      stars: LabelEntity(count: '4.8'),
      order: LabelEntity(count: '5000+'),
      comments: LabelEntity(count: '500+'),
    ),
    GiftEntity(
      title: 'ФлорАрт',
      image: Assets.images.images.cake.path,
      stars: LabelEntity(count: '4.8'),
      order: LabelEntity(count: '5000+'),
      comments: LabelEntity(count: '500+'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return CardItem(item: items[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
