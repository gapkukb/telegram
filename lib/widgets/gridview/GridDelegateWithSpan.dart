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

  int offset = 0;
  int row = 2;

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    final $span = span(index) ?? Span();
    if (index == 2) {
      offset += $span.col - 1;
    } else if (index == 4) {
      offset += $span.col;
    }

    index += offset;

    var crossAxisStart = (index % crossAxisCount) * crossAxisStride;
    var scrollOffset = (index ~/ crossAxisCount) * mainAxisStride;
    var crossAxisOffset = _getOffsetFromStartInCrossAxis(crossAxisStart);
    var mainAxisExtent = mainAxisStride * $span.row - mainAxisSpacing;
    var crossAxisExtent = crossAxisStride * $span.col - crossAxisSpacing;

    // offset += $span.col - 1;
    // row = $span.row;

    return SliverGridGeometry(
      scrollOffset: scrollOffset,
      crossAxisOffset: crossAxisOffset,
      mainAxisExtent: mainAxisExtent,
      crossAxisExtent: crossAxisExtent,
    );
  }

  double _getOffsetFromStartInCrossAxis(double crossAxisStart) {
    if (reverseCrossAxis) {
      return crossAxisCount * crossAxisStride -
          crossAxisStart -
          childCrossAxisExtent -
          (crossAxisStride - childCrossAxisExtent);
    }
    return crossAxisStart;
  }
}
