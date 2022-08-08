import 'package:flutter/material.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 14:57
/// @UpdateDate: 2022-08-08 14:57
class GSectionTitle extends StatelessWidget {
  const GSectionTitle({Key? key, this.title, this.subTitle}) : super(key: key);
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? '-',
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF040815),
                ),
              ),
              const Text(
                'Show more',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF0957DE),
                ),
              )
            ],
          ),
          Offstage(
            offstage: subTitle == null,
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                subTitle ?? '-',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6F6F6F),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
