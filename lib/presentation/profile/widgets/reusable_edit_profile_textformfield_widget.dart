import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class ReusableEditProfileTextFormField extends StatelessWidget {
  const ReusableEditProfileTextFormField({
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
            style: const AppTextStyle().bodyLabelTitle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColorStyle.blackTitleColor,
                ),
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
              suffixIcon: const Padding(
                padding: EdgeInsets.all(16),
                child: Iconify(
                  Ic.sharp_check,
                  color: AppColorStyle.primaryColor,
                  size: 5,
                ),
              ),
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
