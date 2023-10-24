import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gift_app/gen/assets.gen.dart';
import 'package:gift_app/models/gift_model.dart';
import 'package:gift_app/theme/theme.dart';

class CardItem extends StatelessWidget {
  const CardItem({required this.item, super.key});

  final GiftEntity item;

  @override
  Widget build(BuildContext context) {
    final appThemeData = AppTheme.of(context);
    final colorScheme = appThemeData.colorScheme;
    final typographyPrimary =
        appThemeData.typography.withColor(colorScheme.textColor.primary);

    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.background.primary,
            borderRadius: appThemeData.radius.radius22,
            boxShadow: appThemeData.shadows.shadow7,),
        child: SizedBox(
          width: 290,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: appThemeData.radius.radiusTop22,
                child: Image.asset(
                  item.image,
                  // fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                  left: 20,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: typographyPrimary.body20Bold,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.images.icons.starIcon,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              item.stars.count,
                              style: typographyPrimary.body15Medium,
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.images.icons.bagIcon,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              item.order.count,
                              style: typographyPrimary.body15Medium,
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.images.icons.commentsIcon,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              item.comments.count,
                              style: typographyPrimary.body15Medium,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
