import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class AppTextField extends StatelessWidget {
//   const AppTextField({
//     this.controller,
//     this.hint,
//     this.label,
//     this.focusNode,
//     this.borderRadius,
//     this.prefixWidget,
//     this.prefixPath,
//     this.paddingPrefix,
//     this.enabledBorderColor,
//     this.focusedBorderColor,
//     super.key,
//   });
//
//   final TextEditingController? controller;
//   final String? hint;
//   final String? label;
//   final FocusNode? focusNode;
//   final double? borderRadius;
//   final Widget? prefixWidget;
//   final double? paddingPrefix;
//   final String? prefixPath;
//   final Color? enabledBorderColor;
//   final Color? focusedBorderColor;
//
//   @override
//   Widget build(BuildContext context) {
//     double border = borderRadius ?? 8;
//     return TextFormField(
//       controller: controller,
//       focusNode: focusNode,
//
//       decoration: InputDecoration(
//         labelText: label,
//         hintText: hint,
//         prefixIcon:
//             prefixWidget ?? //
//             (prefixPath != null
//                 ? Container(
//                     padding: EdgeInsets.all(paddingPrefix ?? 10),
//                     child: AppImage(prefixPath ?? '', size: 16),
//                   )
//                 : null),
//
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(border),
//           borderSide: BorderSide(
//             color: enabledBorderColor ?? Colors.grey.withValues(alpha: 0.2),
//             width: 2,
//           ),
//         ),
//
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(border),
//           borderSide: BorderSide(
//             color: focusedBorderColor ?? Colors.black54,
//             width: 2.0,
//           ),
//         ),
//       ),
//     );
//   }
// }

class AppPasswordTextField extends StatefulWidget {

  const AppPasswordTextField({
    this.controller,
    this.hint,
    this.focusNode,
    this.label,
    this.borderRadius,
    this.enabledBorderColor,
    this.focusedBorderColor,
    super.key,
  });
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final double? borderRadius;
  final FocusNode? focusNode;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;

  @override
  State<AppPasswordTextField> createState() => _AppPasswordTextFieldState();
}

class _AppPasswordTextFieldState extends State<AppPasswordTextField> {
  bool pwdVisibility = false;

  @override
  Widget build(BuildContext context) {
    final double border = widget.borderRadius ?? 8;
    return TextFormField(
      controller: widget.controller,
      obscureText: !pwdVisibility,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        hintText: widget.hint,
        label: widget.label != null ? Text(widget.label ?? '') : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: BorderSide(
            color: widget.enabledBorderColor?.withValues(alpha: 0.6) ?? context.theme.hintColor.withValues(alpha: 0.5),
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: BorderSide(
            color: widget.enabledBorderColor?.withValues(alpha: 0.6) ?? context.theme.hintColor.withValues(alpha: 0.5),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: BorderSide(
            color: widget.focusedBorderColor ?? context.theme.hintColor, //
            width: 2, //
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),

        suffixIcon: InkWell(
          onTap: () => setState(
            () => pwdVisibility = !pwdVisibility,
          ),
          child: Icon(
            pwdVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
            color: Colors.grey.shade400,
            size: 18,
          ),
        ),
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return 'Required';
        }
        return null;
      },
    );
  }
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.hint,
    this.label,
    this.focusNode,
    this.nextFocusNode,
    this.borderRadius,
    this.prefixWidget,
    this.showCounter,
    this.paddingPrefix,
    this.prefixPath,
    this.prefixColor,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.validator,
    this.textInputType,
    this.autoValidateMode,
    this.enabled,
    this.onFieldSubmitted,
    this.maxLength,
    this.fillColor,
    this.textStyle,
    this.thintStyle,
    this.textInputAction,
  });

  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final double? borderRadius;
  final Widget? prefixWidget;
  final double? paddingPrefix;
  final String? prefixPath;
  final bool? showCounter;
  final TextInputType? textInputType;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? prefixColor;
  final Color? fillColor;
  final int? maxLength;
  final bool? enabled;
  final TextInputAction? textInputAction;
  final TextStyle? textStyle;
  final TextStyle? thintStyle;
  final ValueChanged<String>? onFieldSubmitted;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  FocusNode? _focusNode;
  FocusNode? nextFocusNode;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode;
    nextFocusNode = widget.nextFocusNode;
  }

  String? _validatorWrapper(String? value) {
    final errorText = widget.validator?.call(value);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _hasError = errorText != null;
        });
      }
    });
    return errorText;
  }

  @override
  Widget build(BuildContext context) {
    final double border = widget.borderRadius ?? 8;

    return TextFormField(

      controller: widget.controller,
      focusNode: _focusNode,
      maxLength: widget.maxLength,
      keyboardType: widget.textInputType,
      validator: _validatorWrapper,
      enabled: widget.enabled,

      textInputAction: nextFocusNode != null ? TextInputAction.next : widget.textInputAction,
      autovalidateMode: widget.autoValidateMode ?? AutovalidateMode.disabled,
      style:widget.textStyle ??context.textTheme.titleLarge!.copyWith(color: context.theme.primaryColorDark,height: 0.6,fontSize: 16,fontWeight: FontWeight.bold),

      onFieldSubmitted: (value) {
        if (widget.onFieldSubmitted != null) {
          widget.onFieldSubmitted?.call(value);
        } else if (nextFocusNode != null) {
          FocusScope.of(context).requestFocus(nextFocusNode);
        }
      },
      decoration: InputDecoration(
        labelText: widget.label,
        hintStyle: widget.thintStyle ??context.textTheme.titleLarge!.copyWith(color: context.theme.primaryColorDark.withValues(alpha: 0.3),height: 0.6,fontSize: 16,fontWeight: FontWeight.bold),

        labelStyle: context.textTheme.titleLarge!.copyWith(color: context.theme.primaryColorDark.withValues(alpha: 0.8)),
        floatingLabelStyle: context.textTheme.displayLarge!.copyWith(color: context.theme.primaryColorDark.withValues(alpha: 0.8)),
        counterStyle: const TextStyle(height: 0),
        fillColor: widget.fillColor??context.theme.cardColor,
        filled: true,
        counterText: (widget.showCounter ?? false) ? null : '',
        // floatingLabelStyle: TextStyle(
        //   fontSize: 16, // اندازه وقتی لیبل بالا میره
        //   color: Colors.blue,
        // ),
        hintText: widget.hint,
        errorMaxLines: 2,
        prefixIcon:
            widget.prefixWidget ??
            (widget.prefixPath != null
                ? Padding(
                    padding: EdgeInsets.all(widget.paddingPrefix ?? 10),
                    child: AppImage(
                      widget.prefixPath!,
                      size: 20,
                      color: _hasError ? Colors.red : widget.prefixColor,
                    ),
                  )
                : null),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: BorderSide(
            // color: widget.enabledBorderColor?.withValues(alpha: 0.6) ?? context.theme.hintColor.withValues(alpha: 0.5),
            color: Colors.transparent,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: BorderSide(
            // color: widget.enabledBorderColor?.withValues(alpha: 0.6) ?? context.theme.hintColor.withValues(alpha: 0.5),
            color: Colors.transparent,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: BorderSide(
            // color: widget.focusedBorderColor ?? context.theme.hintColor, //
            color: Colors.transparent,
            width: 2, //
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
