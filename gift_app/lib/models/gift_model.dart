import 'package:equatable/equatable.dart';

class GiftEntity extends Equatable {
  final String title;
  final String image;
  final LabelEntity stars;
  final LabelEntity order;
  final LabelEntity comments;

  const GiftEntity(
      {required this.title,
      required this.image,
      required this.stars,
      required this.order,
      required this.comments});

  @override
  // TODO: implement props
  List<Object?> get props => [
        title,
        image,
      ];
}

class LabelEntity {
  final String count;
  // final String icon;

  LabelEntity({required this.count});
}
