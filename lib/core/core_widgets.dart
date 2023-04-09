// ignore_for_file: public_member_api_docs, sort_constructors_first
/// {@category Core}
/// {@category Widgets}
library core.widgets;

import 'package:flutter/material.dart';

enum CoreWidgetListType {
  column,
  listView,
  sliver,
}

class CoreListWidget extends StatelessWidget {
  const CoreListWidget({
    Key? key,
    required this.listType,
    this.emptyBuilder,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final CoreWidgetListType listType;

  final WidgetBuilder? emptyBuilder;

  final IndexedWidgetBuilder itemBuilder;

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    switch (listType) {
      case CoreWidgetListType.column:
        if (itemCount <= 0 && emptyBuilder != null) {
          return emptyBuilder!(context);
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            itemCount,
            (index) => itemBuilder(context, index),
          ),
        );
      case CoreWidgetListType.listView:
        if (itemCount <= 0 && emptyBuilder != null) {
          return emptyBuilder!(context);
        }
        return ListView.builder(
          itemBuilder: itemBuilder,
          itemCount: itemCount,
        );
      case CoreWidgetListType.sliver:
        if (itemCount <= 0 && emptyBuilder != null) {
          return SliverFillRemaining(child: emptyBuilder!(context));
        }
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            itemBuilder,
            childCount: itemCount,
          ),
        );
    }
  }
}
