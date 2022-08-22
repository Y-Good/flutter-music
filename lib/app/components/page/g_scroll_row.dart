import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_section_title.dart';
import 'package:g_music/app/data/models/personalized_model.dart';
import 'package:get/get.dart';

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
    this.datas,
  }) : super(key: key);
  final String? title;
  final String? subTitle;
  final VoidCallback? onTap;
  final RxList<Personalized>? datas;

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
                datas?.length ?? 5,
                (index) => GestureDetector(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GAvatar(
                          url: datas?[index].picUrl,
                          size: 120,
                          radius: 4,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          datas?[index].name ?? 'Blinding Lights',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 6),
                        const Text(
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
