import 'package:equatable/equatable.dart';
import 'package:gift_app/theme/data/icons/app_icons_size.dart';

class AppIcons extends Equatable {
  const AppIcons({required this.sizes});

  factory AppIcons.regular() => AppIcons(
        sizes: AppIconsSizes.regular(),
      );

  final AppIconsSizes sizes;

  @override
  List<Object?> get props => [];
}
