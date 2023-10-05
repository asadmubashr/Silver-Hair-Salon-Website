import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utilities/methods.dart';

class CachedNetworkImageView extends StatelessWidget {
  double? width;
  double? height;
  String imageUrl;
  CachedNetworkImageView({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      memCacheHeight: 20,
      memCacheWidth: 20,
      cacheManager: AppMethods.customCacheManager,
      imageUrl: imageUrl,
      placeholder: (context, url) => Center(
        child: Container(
          width: width,
          height: height,
          color: Colors.grey[100],
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        color: Colors.black12,
        child: const Icon(
          Icons.error,
          color: Colors.red,
        ),
      ),
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
