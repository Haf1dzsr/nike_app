import 'package:flutter/material.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    super.key,
    required this.formTitle,
    required this.formTextC,
    this.formValidator,
    this.obscureText = false,
    this.suffixIcon,
    this.hintText,
  });
  final String formTitle;
  final TextEditingController formTextC;
  final String? Function(String?)? formValidator;
  final bool? obscureText;
  final IconButton? suffixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formTitle,
            style: const AppTextStyle().bodyLabelTitle,
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator:
                formValidator != null ? (value) => formValidator!(value) : null,
            obscureText: obscureText!,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const AppTextStyle().buttonLabelTitle,
              suffixIcon: suffixIcon,
              fillColor: AppColorStyle.greyButtonColor,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
