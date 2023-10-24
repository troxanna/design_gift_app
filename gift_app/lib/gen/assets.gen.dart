/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
  $AssetsImagesImagesGen get images => const $AssetsImagesImagesGen();
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/bag_icon.svg
  String get bagIcon => 'assets/images/icons/bag_icon.svg';

  /// File path: assets/images/icons/balloon_icon.svg
  String get balloonIcon => 'assets/images/icons/balloon_icon.svg';

  /// File path: assets/images/icons/cake_icon.svg
  String get cakeIcon => 'assets/images/icons/cake_icon.svg';

  /// File path: assets/images/icons/candy_icon.svg
  String get candyIcon => 'assets/images/icons/candy_icon.svg';

  /// File path: assets/images/icons/champagne_icon.svg
  String get champagneIcon => 'assets/images/icons/champagne_icon.svg';

  /// File path: assets/images/icons/comments_icon.svg
  String get commentsIcon => 'assets/images/icons/comments_icon.svg';

  /// File path: assets/images/icons/date_icon.svg
  String get dateIcon => 'assets/images/icons/date_icon.svg';

  /// File path: assets/images/icons/filter_icon.svg
  String get filterIcon => 'assets/images/icons/filter_icon.svg';

  /// File path: assets/images/icons/flower_icon.svg
  String get flowerIcon => 'assets/images/icons/flower_icon.svg';

  /// File path: assets/images/icons/flowers_icon.svg
  String get flowersIcon => 'assets/images/icons/flowers_icon.svg';

  /// File path: assets/images/icons/gift_icon.svg
  String get giftIcon => 'assets/images/icons/gift_icon.svg';

  /// File path: assets/images/icons/search_icon.svg
  String get searchIcon => 'assets/images/icons/search_icon.svg';

  /// File path: assets/images/icons/star_icon.svg
  String get starIcon => 'assets/images/icons/star_icon.svg';

  /// List of all assets
  List<String> get values => [
        bagIcon,
        balloonIcon,
        cakeIcon,
        candyIcon,
        champagneIcon,
        commentsIcon,
        dateIcon,
        filterIcon,
        flowerIcon,
        flowersIcon,
        giftIcon,
        searchIcon,
        starIcon
      ];
}

class $AssetsImagesImagesGen {
  const $AssetsImagesImagesGen();

  /// File path: assets/images/images/cake.jpg
  AssetGenImage get cake =>
      const AssetGenImage('assets/images/images/cake.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [cake];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
