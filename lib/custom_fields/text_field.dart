import 'package:blog/exports.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  final String? labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final Function()? onTap;
  final String? initialValue;
  final bool readOnly;
  final Color? fillColor;
  final TextEditingController? controller;
  final void Function(String?)? onChanged;
  final VoidCallback? onEditComplete;
  final int maxLines;
  final int? minLines;
  final TextInputType keyboardType;
  final EdgeInsets? contentPadding;
  final bool isErrorState;

  const CustomTextField({
    super.key,
    this.labelText,
    required this.name,
    this.hintText,
    this.onEditComplete,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.obscureText = false,
    this.validator,
    this.initialValue,
    this.textInputAction = TextInputAction.done,
    this.onTap,
    this.fillColor = AppColors.white,
    this.readOnly = false,
    this.keyboardType = TextInputType.name,
    this.maxLines = 1,
    this.minLines,
    this.contentPadding,
    this.isErrorState = false,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: FormBuilderTextField(
        textInputAction: textInputAction,
        validator: validator,
        controller: controller,
        onEditingComplete: onEditComplete,
        onChanged: onChanged,
        onTap: onTap,
        name: name,
        readOnly: readOnly,
        initialValue: initialValue,
        style: Theme.of(context).textTheme.bodySmall,
        cursorColor: AppColors.black,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLines: maxLines,
        minLines: minLines,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            letterSpacing: 1,
            color: AppColors.black.withOpacity(0.5),
          ),
          labelText: labelText, // Correct property
          labelStyle: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.grey),
          fillColor: fillColor,
          filled: false,
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.010),
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.010),
            borderSide: const BorderSide(
              width: 1.0,
              color: AppColors.grey,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.010),
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.010),
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
