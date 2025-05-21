import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:skeletonizer/skeletonizer.dart';

class QueryBuilderWithSkeleton<TData, TError> extends StatelessWidget {
  final Widget Function(BuildContext context, UseQueryResult<TData, Object?> data) builder;
  final List<Object> queryKey;
  final Future<TData> Function() query;
  final int skeletonCount;
  final bool enabled;

  final RefetchOnMount? refetchOnMount;
  final Duration? staleDuration;
  final Duration? cacheDuration;
  final Duration? refetchInterval;
  final int? retryCount;
  final Duration? retryDelay;

  const QueryBuilderWithSkeleton({super.key, required this.queryKey, required this.query, required this.skeletonCount, required this.builder, this.enabled = true, this.refetchOnMount, this.staleDuration, this.cacheDuration, this.refetchInterval, this.retryCount, this.retryDelay});

  @override
  Widget build(BuildContext context) {
    return QueryBuilder(
      queryKey,
      query,
      enabled: enabled,
      cacheDuration: cacheDuration,
      refetchInterval: refetchInterval,
      refetchOnMount: refetchOnMount,
      retryCount: retryCount,
      retryDelay: retryDelay,
      staleDuration: staleDuration,
      builder: (context, data) {
        return Skeletonizer.sliver(enabled: data.isLoading, containersColor: Colors.grey, child: builder(context, data));
      },
    );
  }
}
