import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';

class AppDropDown<T> extends StatelessWidget {

  const AppDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.itemBuilder,
    this.selectedItemBuilder,
    this.selectedItem,
    this.borderColor,
    this.hint,
  });
  final List<T> items;
  final T? selectedItem;
  final ValueChanged<T?> onChanged;
  final Widget Function(T item) itemBuilder; // نمایش آیتم تو لیست بازشونده
  final Widget Function(T item)? selectedItemBuilder; // نمایش آیتم انتخاب‌شده
  final String? hint;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(

      child: DropdownButton2<T>(
        isExpanded: true,
        value: selectedItem,

        hint: hint != null ? Text(hint!) : null,
        onChanged: onChanged,
        alignment: Directionality.of(context) == TextDirection.rtl
            ? Alignment.centerRight
            : Alignment.centerLeft, // ✅ تنظیم خودکار بر اساس زبان
        items: items.map((item) {
          return DropdownMenuItem<T>(
            value: item,
            child: itemBuilder(item),
          );
        }).toList(),

        selectedItemBuilder: selectedItemBuilder != null
            ? (context) => items.map((e) => selectedItemBuilder!(e)).toList()
            : null,

        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color:borderColor?? context.theme.hintColor, width: 1.5),
            color: context.theme.scaffoldBackgroundColor,
          ),
          elevation: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.theme.scaffoldBackgroundColor,
            border: Border.all(color: context.theme.hintColor),
            boxShadow: [
              const BoxShadow(
                blurRadius: 8,
                color: Colors.black26,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }
}
