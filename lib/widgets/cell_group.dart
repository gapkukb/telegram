import 'package:flutter/material.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/cell.dart';

class CellGroup extends StatelessWidget {
  final List<Cell> children;
  final String? title;
  final Widget? titleWidget;
  final TextStyle? titleStyle;
  final bool inset;
  final bool border;

  const CellGroup({
    super.key,
    required this.children,
    this.title,
    this.titleWidget,
    this.titleStyle,
    this.inset = true,
    this.border = true,
  });

  @override
  Widget build(BuildContext context) {
    final title = _buildTitle();
    final len = children.length;

    final nodes =
        border
            ? List.generate(len, (index) {
              if (!border || index > len - 2) return children[index];
              return DecoratedBox(
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                    bottom: BorderSide(color: Color(0xffeeeeee), width: 1),
                  ),
                ),
                child: children[index],
              );
            })
            : children;

    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      color: Colors.white,
      margin: inset ? Gutter.horizontal.xs : const EdgeInsets.all(0),
      child: Padding(
        padding: Gutter.horizontal.sm,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [if (title != null) title, ...nodes],
        ),
      ),
    );
  }

  Widget? _buildTitle() {
    if (title == null && titleWidget == null) return null;
    return titleWidget ?? Text(title!, style: titleStyle);
  }
}
