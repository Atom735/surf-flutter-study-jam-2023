/// {@category Core}
/// {@category Theme}
library core.theme;

import 'package:flutter/material.dart';

/// Базовый класс для реализации класса расширения темы.
///
/// {@category Core}
/// {@subCategory Base classes}
/// {@category Theme}
@immutable
abstract class CoreThemeExtensionBase<T extends CoreThemeExtensionBase<T>>
    extends ThemeExtension<T> {
  const CoreThemeExtensionBase();

  /// Получение расширения темы из контекста.
  static T of<T extends CoreThemeExtensionBase<T>>(
    BuildContext context, [
    /// Используется для отладки чтобы туда можно было передать [T.new],
    /// или какой-то другой конструктор константы, чтобы
    /// изменения в конструкторе отрабатывали в HotReload.
    T Function()? fallbackBuilder,
  ]) {
    final ext = Theme.of(context).extension<T>() ?? fallbackBuilder?.call();
    assert(
      () {
        if (ext == null) {
          throw FlutterError.fromParts(<DiagnosticsNode>[
            ErrorSummary(
              'Ненайдено расширение темы [$T].',
            ),
            ErrorDescription(
              '${context.widget.runtimeType} widgets require '
              '[$T] '
              'to be provided by a Theme widget ancestor.',
            ),
            ...context.describeMissingAncestor(
              expectedAncestorType: T,
            ),
          ]);
        }
        return true;
      }(),
      'Error in Flutter',
    );
    return ext!;
  }
}
