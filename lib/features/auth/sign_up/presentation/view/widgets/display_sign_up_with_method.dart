import 'package:flutter/material.dart';
import '../../../../../../core/utils/theme/text_theme_app.dart';

class DisplaySignUpWithMethod extends StatelessWidget {
  const DisplaySignUpWithMethod({
    super.key, required this.image, required this.text, this.colorText,
  });
  final String image;
  final String text;
  final Color? colorText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image,height: 22,color: colorText),
        const SizedBox(width: 5),
        Text(text,style: TextThemeApp.font17BlackMedium.copyWith(color: colorText)),
      ],
    );
  }
}
