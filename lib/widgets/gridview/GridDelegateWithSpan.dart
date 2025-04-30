import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

typedef SpanFunc = Span? Function(int index);

class Span {
  final int row;
  final int col;

  Span({this.row = 1, this.col = 1});
}

class GridDelegateWithSpan extends SliverGridDelegateWithFixedCrossAxisCount {
  final SpanFunc span;
  GridDelegateWithSpan({
    required super.crossAxisCount,
    required this.span,
    super.childAspectRatio,
    super.crossAxisSpacing,
    super.mainAxisExtent,
    super.mainAxisSpacing,
  });

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    final double usableCrossAxisExtent = math.max(
      0.0,
      constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1),
    );
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent =
        mainAxisExtent ?? childCrossAxisExtent / childAspectRatio;

    return SliverGridRegularTileLayout2(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      crossAxisSpacing: crossAxisSpacing,
      mainAxisSpacing: mainAxisSpacing,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
      span: span,
    );
  }
}

class SliverGridRegularTileLayout2 extends SliverGridRegularTileLayout {
  final SpanFunc span;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  SliverGridRegularTileLayout2({
    required super.crossAxisCount,
    required super.mainAxisStride,
    required super.crossAxisStride,
    required super.childMainAxisExtent,
    required super.childCrossAxisExtent,
    required super.reverseCrossAxis,
    required this.span,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
  });

  int x = 0;
  int next = -1;

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    index = index + x;
    if (next == index) {
      index += 4;
    }

    final _span = span(index);
    var crossAxisExtent = childCrossAxisExtent;
    var mainAxisExtent = childMainAxisExtent;

    if (_span != null && _span.row > 1) {
      mainAxisExtent = mainAxisStride * _span.row - mainAxisSpacing;
      next = index + crossAxisCount;
    }

    // if (_span != null && _span.col > 1) {
    //   final cols = math.min(_span.col, crossAxisCount) - 1;
    //   x += cols;
    //   //如果放不下，则放到下一排
    //   if (index % crossAxisCount + _span.col > crossAxisCount) {
    //     x += crossAxisCount - index % crossAxisCount;
    //     index += cols;
    //   }
    //   crossAxisExtent = crossAxisStride * (cols + 1) - crossAxisSpacing;
    // }

    double _getOffsetFromStartInCrossAxis(double crossAxisStart) {
      if (reverseCrossAxis) {
        return crossAxisCount * crossAxisStride -
            crossAxisStart -
            childCrossAxisExtent -
            (crossAxisStride - childCrossAxisExtent);
      }
      return crossAxisStart;
    }

    final double crossAxisStart = (index % crossAxisCount) * crossAxisStride;

    return SliverGridGeometry(
      scrollOffset: (index ~/ crossAxisCount) * mainAxisStride,
      crossAxisOffset: _getOffsetFromStartInCrossAxis(crossAxisStart),
      mainAxisExtent: mainAxisExtent,
      crossAxisExtent: crossAxisExtent,
    );
  }
}
