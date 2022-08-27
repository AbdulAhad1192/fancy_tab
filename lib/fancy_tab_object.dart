import 'package:flutter/material.dart';

class FancyTabObject extends StatelessWidget {
  final void Function()? onTap;
  final bool selected;
  final bool isFirst;
  final bool isLast;
  final int index;
  final String tabText;
  final int length;
  final TextDirection? textDirection;
  final Color? borderColor;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;

  const FancyTabObject({
    Key? key,
    this.onTap,
    required this.selected,
    required this.index,
    required this.tabText,
    required this.length,
    this.textDirection,
    this.selectedColor,
    this.unSelectedColor,
    this.selectedTextColor,
    this.unSelectedTextColor, required this.isFirst, required this.isLast, this.borderColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("index $index length ${length} ");
    print("debug ${index ==0 ? "index 0" : index == length -1 ? "last index : $index" : 'middle index : $index'}");
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        // width: 120,
        // height: 40,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius:
            textDirection==TextDirection.rtl
                ? BorderRadius.horizontal(right: index != 0 ? Radius.zero : Radius.circular(20.0),left: index != length -1 ? Radius.zero : Radius.circular(20.0) )
                : BorderRadius.horizontal(left: index != 0? Radius.zero : Radius.circular(20.0),right: index != length -1 ? Radius.zero : Radius.circular(20.0) ),
            color:selected?selectedColor:unSelectedColor,
        ),
        child: Center(
            child: Text(tabText,textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1!.merge(TextStyle(fontWeight: FontWeight.bold,color:selected? selectedTextColor:unSelectedTextColor)),)),
      ),
    );
  }
}
