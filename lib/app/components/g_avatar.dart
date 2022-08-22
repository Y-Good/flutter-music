import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';

class GAvatar extends StatelessWidget {
  final double? radius;
  final String? url;
  final double? size;
  final bool border;

  const GAvatar({
    Key? key,
    this.radius,
    this.url,
    this.size,
    this.border = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0),
        border: Border.all(width: border ? 1 : 0, color: GColor.white),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: Image(
          width: size,
          height: size,
          fit: BoxFit.cover,
          image: NetworkImage(
            url ??
                'http://tiebapic.baidu.com/forum/w%3D580/sign=05783a1086cec3fd8b3ea77de689d4b6/054f78f0f736afc3c55bf8b9f619ebc4b6451293.jpg',
          ),
        ),
      ),
    );
  }
}
