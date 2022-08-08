import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_section_title.dart';

import '../g_avatar.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 14:47
/// @UpdateDate: 2022-08-08 14:47

class GScrollRow extends StatelessWidget {
  const GScrollRow({
    Key? key,
    this.title,
    this.subTitle,
    this.onTap,
  }) : super(key: key);
  final String? title;
  final String? subTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GSectionTitle(title: title, subTitle: subTitle),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        GAvatar(size: 120, radius: 4),
                        SizedBox(height: 12),
                        Text(
                          'Blinding Lights',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'The Weeknd',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6F6F6F),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
