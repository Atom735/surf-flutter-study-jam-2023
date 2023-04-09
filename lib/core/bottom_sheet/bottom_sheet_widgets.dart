// ignore_for_file: public_member_api_docs, sort_constructors_first
/// {@category Core}
/// {@subCategory Bottom sheet}
/// {@category Widgets}
library bottom_sheet.widgets;

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as mbs;

@immutable
abstract class MyModalBottomSheetPageBase<T> extends Page<T> {
  WidgetBuilder get builder;

  const MyModalBottomSheetPageBase({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  /// Default container builder is the Material Appearance
  mbs.WidgetWithChildBuilder _materialContainerBuilder(
    BuildContext context, {
    Color? backgroundColor,
    double? elevation,
    ThemeData? theme,
    Clip? clipBehavior,
    ShapeBorder? shape,
  }) {
    final bottomSheetTheme = Theme.of(context).bottomSheetTheme;
    final color = backgroundColor ??
        bottomSheetTheme.modalBackgroundColor ??
        bottomSheetTheme.backgroundColor;
    final effectiveElevation = elevation ?? bottomSheetTheme.elevation ?? 0.0;
    final effectiveShape = shape ?? bottomSheetTheme.shape;
    final effectiveClipBehavior =
        clipBehavior ?? bottomSheetTheme.clipBehavior ?? Clip.none;

    Widget result(context, animation, child) => Material(
          color: color,
          elevation: effectiveElevation,
          shape: effectiveShape,
          clipBehavior: effectiveClipBehavior,
          child: child,
        );
    if (theme != null) {
      return (context, animation, child) =>
          Theme(data: theme, child: result(context, animation, child));
    } else {
      return result;
    }
  }

  @override
  Route<T> createRoute(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    assert(debugCheckHasMaterialLocalizations(context));
    return mbs.ModalBottomSheetRoute<T>(
      builder: builder,
      containerBuilder: _materialContainerBuilder(
        context,
        theme: Theme.of(context),
      ),
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      settings: RouteSettings(name: name, arguments: arguments),
      expanded: true,
    );
  }
}

@immutable
class MyModalBottomSheetPage<T> extends MyModalBottomSheetPageBase<T> {
  @override
  final WidgetBuilder builder;

  const MyModalBottomSheetPage({
    required this.builder,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });
}
