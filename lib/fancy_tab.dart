import 'package:flutter/material.dart';
import 'fancy_tab_object.dart';

class FancyTab extends StatefulWidget {
  /// this is the selected index of the fancy tab
  final int selected;

  /// This is for list of labels in text
  final List<String> labelsList;

  /// The number of labels
  final int length;

  /// The number of click event of label
  final void Function(int)? onTap;

  /// (OPTIONAL) It is used if your app is multilingual
  /// default is TextDirection.ltr
  final TextDirection? textDirection;

  /// Selected label color
  final Color? selectedColor;

  /// unSelected label color
  final Color? unSelectedColor;

  /// Selected label text color
  final Color? selectedTextColor;

  /// unSelected label text color
  final Color? unSelectedTextColor;

  /// Border color of the tab bar
  final Color? borderColor;

  /// space between the two labels
  final double? separator;

  /// The height of the tab bar
  final double? tabBarHeight;

  const FancyTab({
    Key? key,
    required this.selected,
    required this.labelsList,
    required this.length,
    this.onTap,
    this.textDirection = TextDirection.ltr,
    this.selectedColor = const Color(0xFF2196F3),
    this.unSelectedColor = const Color(0xA69E9E9E),
    this.selectedTextColor = const Color(0xFFFFFFFF),
    this.unSelectedTextColor = const Color(0xFF7A7A7A),
    this.borderColor = const Color(0xFF000000),
    this.separator = 5,
    this.tabBarHeight = 50,
  }) : super(key: key);

  @override
  State<FancyTab> createState() => _FancyTabState();
}

class _FancyTabState extends State<FancyTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.tabBarHeight,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5000.0),
            border: Border.all(color: widget.borderColor!, width: 1)),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: widget.length,
          itemBuilder: (context, index) {
            return FancyTabObject(
              onTap: () {
                if (widget.selected != index) {
                  widget.onTap!(index);
                }
              },
              selected: widget.selected == index,
              index: index,
              tabText: widget.labelsList[index],
              length: widget.length,
              textDirection: widget.textDirection,
              selectedColor: widget.selectedColor,
              unSelectedColor: widget.unSelectedColor,
              selectedTextColor: widget.selectedTextColor,
              unSelectedTextColor: widget.selectedTextColor,
              isFirst: index == 0,
              isLast: index == widget.length - 1,
              borderColor: widget.borderColor,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: widget.separator,
            );
          },
        ));
  }
}
