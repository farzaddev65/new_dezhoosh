part of 'extensions.dart';

extension GenericIterableExtentions<T> on Iterable<T> {
  Iterable<R> mapIndexed<R>(
      final R Function(int index, T element) convert) sync* {
    int index = 0;
    for (final T element in this) {
      yield convert(index++, element);
    }
  }
}
