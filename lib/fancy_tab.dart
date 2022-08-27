
import 'package:flutter/material.dart';
import 'fancy_tab_object.dart';

class FancyTab extends StatefulWidget {
  final int selected;
  final List<String> labelsList;
  final int length;
  final void Function(int)? onTap;
  final TextDirection? textDirection;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;
  final Color? borderColor;

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
    this.unSelectedTextColor  = const Color(0xFF7A7A7A),
    this.borderColor  = const Color(0xFF000000)
  }) : super(key: key);

  @override
  State<FancyTab> createState() => _FancyTabState();
}

class _FancyTabState extends State<FancyTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        // width: double.infinity,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5000.0),
            border: Border.all(color: widget.borderColor!,width: 1)
        ),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: widget.length ,
            itemBuilder: (context,index){
              return FancyTabObject(
                onTap: () {
                  widget.onTap!(index);
                },
                selected: widget.selected == index ,
                index: index,
                tabText: widget.labelsList[index],
                length: widget.length,
                textDirection: widget.textDirection,
                selectedColor: widget.selectedColor,
                unSelectedColor: widget.unSelectedColor,
                selectedTextColor: widget.selectedTextColor,
                unSelectedTextColor: widget.selectedTextColor,
                isFirst: index == 0,
                isLast: index == widget.length -1,
                borderColor: widget.borderColor,
              );
            },
            separatorBuilder: (context, index) {
              return Container(width: 2,color: widget.borderColor!,);
            },
        )

    );
  }
}
