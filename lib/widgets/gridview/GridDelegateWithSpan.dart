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
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
      span: span,
    );
  }
}

class SliverGridRegularTileLayout2 extends SliverGridRegularTileLayout {
  final SpanFunc span;

  const SliverGridRegularTileLayout2({
    required super.crossAxisCount,
    required super.mainAxisStride,
    required super.crossAxisStride,
    required super.childMainAxisExtent,
    required super.childCrossAxisExtent,
    required super.reverseCrossAxis,
    required this.span,
  });

  final double _x = 100;
  final double _y = 100;

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    final spans = span(index);
    if (spans != null && spans.row > 1) {
      print('object');
    }
    if (spans != null && spans.col > 1) {
      print('object2');
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

    final double crossAxisStart = (index % crossAxisCount) * crossAxisStride;

    return SliverGridGeometry(
      scrollOffset: (index ~/ crossAxisCount) * mainAxisStride,
      crossAxisOffset: _getOffsetFromStartInCrossAxis(crossAxisStart),
      mainAxisExtent: childMainAxisExtent,
      crossAxisExtent: childCrossAxisExtent,
    );
  }
}
