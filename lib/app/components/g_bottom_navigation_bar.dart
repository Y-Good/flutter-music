///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 15:47
/// @UpdateDate: 2022-08-08 15:47
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GBottomNavigationBarItem {
  Widget icon;
  Widget activeIcon;
  GBottomNavigationBarItem(this.icon, this.activeIcon);
}

class GBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<GBottomNavigationBarItem> items;

  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  const GBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.selectedItemColor,
    this.unselectedItemColor,
  })  : assert(items.length < 6),
        super(key: key);

  @override
  _GBottomNavigationBarState createState() => _GBottomNavigationBarState();
}

class _GBottomNavigationBarState extends State<GBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: Get.width,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          widget.items.length,
          (index) => InkWell(
            child: SizedBox(
              width: Get.width / widget.items.length,
              child: IconTheme(
                data: IconThemeData(
                  color:
                      widget.items.indexOf(widget.items[index]) == _currentIndex
                          ? widget.selectedItemColor ?? Colors.black
                          : widget.unselectedItemColor ?? Colors.grey,
                  size: 24,
                ),
                child: _currentIndex == index
                    ? Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: const Color(0xFF004ED5).withOpacity(0.19),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: widget.items[index].activeIcon,
                      )
                    : widget.items[index].icon,
              ),
            ),
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
              widget.onTap(index);
            },
          ),
        ),
      ),
    );
  }
}
