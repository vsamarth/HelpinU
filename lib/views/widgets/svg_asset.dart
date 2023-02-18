import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAsset extends StatelessWidget {
  final AssetName? assetName;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  const SvgAsset(
      {Key? key, this.assetName, this.height, this.width, this.fit, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: SvgPicture.asset(
        SVGAssets().assets[assetName]!,
        fit: fit ?? BoxFit.cover,
        color: color,
      ),
    );
  }
}

class SVGAssets {
  static final SVGAssets _instance = SVGAssets._internal();

  factory SVGAssets() {
    return _instance;
  }

  SVGAssets._internal();

  Map<AssetName, String> assets = {
    AssetName.vectorBottom: "assets/icons/Vector.svg",
    AssetName.vectorTop: "assets/icons/Vector-1.svg",
    // AssetName.vectorSmallBottom: "assets/icons/VectorSmallBottom.svg",
    // AssetName.vectorSmallTop: "assets/icons/VectorSmallTop.svg",
  };
}

enum AssetName {
  vectorBottom,
  vectorTop,
  // vectorSmallBottom,
  // vectorSmallTop,
}
