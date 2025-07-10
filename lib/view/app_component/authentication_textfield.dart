import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class AuthenticationTextfield extends StatelessWidget {
  final String topLabel;
  final String placeholder;
  final TextEditingController controller;

  final Color placeholderColor;
  final Color textColor;
  final FontFamily placeholderFont;
  final FontFamily textFont;
  final bool obscureText;
  final double fontSize;
  final bool isPassword;
  final bool isSecure;
  final VoidCallback? onToggleSecure;

  const AuthenticationTextfield({
    super.key,
    required this.topLabel,
    required this.placeholder,
    required this.controller,
    this.placeholderColor = AppColor.clr_A4A7AE,
    this.textColor = AppColor.clr_000000,
    this.placeholderFont = FontFamily.LatoRegular,
    this.textFont = FontFamily.LatoRegular,
    this.obscureText = false,
    this.fontSize = 15,
    this.isPassword = false,
    this.isSecure = false,
    this.onToggleSecure,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Text field container
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 54,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1.3, color: AppColor.clr_D5D7DA),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      obscureText: obscureText,
                      style: TextStyle(
                        fontFamily: textFont.value,
                        color: textColor,
                        fontSize: fontSize,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: placeholder,
                        hintStyle: TextStyle(
                          fontFamily: placeholderFont.value,
                          color: placeholderColor,
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                  ),
                  if (isPassword)
                    GestureDetector(
                      onTap: onToggleSecure,
                      child: Icon(
                        isSecure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                        size: 20,
                        color: AppColor.clr_ACADBC,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),

        // Floating label
        Positioned(
          top: 0,
          left: 12,
          child: Container(
            color: AppColor.clr_FFFFFF,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: LatoText(
              title: topLabel,
              fontFamily: FontFamily.LatoRegular,
              fontSize: 13,
              color: AppColor.clr_717680,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class AuthenticationTextfieldPhoneNumber extends StatefulWidget {
  final String topLabel;
  final String placeholder;
  final TextEditingController controller;

  final Color placeholderColor;
  final Color textColor;
  final FontFamily placeholderFont;
  final FontFamily textFont;
  final bool obscureText;
  final double fontSize;

  const AuthenticationTextfieldPhoneNumber({
    super.key,
    required this.topLabel,
    required this.placeholder,
    required this.controller,
    this.placeholderColor = AppColor.clr_A4A7AE,
    this.textColor = AppColor.clr_000000,
    this.placeholderFont = FontFamily.LatoRegular,
    this.textFont = FontFamily.LatoRegular,
    this.obscureText = false,
    this.fontSize = 15,
  });

  @override
  State<AuthenticationTextfieldPhoneNumber> createState() =>
      _AuthenticationTextfieldPhoneNumberState();
}

class _AuthenticationTextfieldPhoneNumberState
    extends State<AuthenticationTextfieldPhoneNumber> {
  Country selectedCountry = Country(
    phoneCode: '91',
    countryCode: 'IN',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'India',
    example: '9123456789',
    displayName: 'India',
    displayNameNoCountryCode: 'India',
    e164Key: '',
  );

  void _showCountryPicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Phone field container
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 54,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1.3, color: AppColor.clr_D5D7DA),
            ),
            child: Row(
              children: [
                // Country code selector
                GestureDetector(
                  onTap: _showCountryPicker,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Text(
                          selectedCountry.flagEmoji,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '+${selectedCountry.phoneCode}',
                          style: TextStyle(
                            fontSize: widget.fontSize,
                            fontFamily: widget.textFont.value,
                            color: widget.textColor,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_outlined, size: 20),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const VerticalDivider(
                    width: 1,
                    color: AppColor.clr_E9EAEB,
                  ),
                ),
                // Input field
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    keyboardType: TextInputType.phone,
                    obscureText: widget.obscureText,
                    style: TextStyle(
                      fontFamily: widget.textFont.value,
                      color: widget.textColor,
                      fontSize: widget.fontSize,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: widget.placeholder,
                      hintStyle: TextStyle(
                        fontFamily: widget.placeholderFont.value,
                        color: widget.placeholderColor,
                        fontSize: widget.fontSize,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Floating label
        Positioned(
          top: 0,
          left: 12,
          child: Container(
            color: AppColor.clr_FFFFFF,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: LatoText(
              title: widget.topLabel,
              fontFamily: FontFamily.LatoRegular,
              fontSize: 13,
              color: AppColor.clr_717680,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

