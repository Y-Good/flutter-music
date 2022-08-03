import 'package:flutter/material.dart';

class GAvatar extends StatelessWidget {
  final double? radius;
  final String? url;
  final double? size;

  const GAvatar({
    Key? key,
    this.radius,
    this.url,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Image(
        width: size,
        height: size,
        image: NetworkImage(
          url ??
              'https://img2.baidu.com/it/u=4244269751,4000533845&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1657990800&t=0f42feeba0afd742fa049ad16066ca89',
        ),
      ),
    );
  }
}
