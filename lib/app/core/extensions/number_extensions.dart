part of 'extensions.dart';

extension StringExtensions on String {
  String moneyFormat() => this;
}

extension StringNullExtensions on double {
  //'۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'
  double  toLatinNumber() => double.parse(toString()
      .replaceAll('۰', '0')
      .replaceAll('۱', '0')
      .replaceAll('۲', '0')
      .replaceAll('۳', '0')
      .replaceAll('۴', '0')
      .replaceAll('۵', '0')
      .replaceAll('۶', '0')
      .replaceAll('۷', '0')
      .replaceAll('۸', '0')
      .replaceAll('۹', '0'));
}
