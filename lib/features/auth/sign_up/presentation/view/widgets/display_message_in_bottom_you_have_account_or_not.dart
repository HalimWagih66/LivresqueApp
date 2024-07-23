import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/theme/text_theme_app.dart';
import '../../../../../../core/utils/widgets/buttons/custom_text_button_use_under_line.dart';

class DisplayMessageInBottomYouHaveAccountOrNot extends StatelessWidget {
  const DisplayMessageInBottomYouHaveAccountOrNot({super.key, required this.question, required this.actionName, required this.routeName});
  final String question;
  final String actionName;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question,style: TextThemeApp.font15LightBlueRegular,),
        CustomTextButtonUseUnderLine(onPressed: () {
          GoRouter.of(context).replace(routeName);
        }, text: actionName)
      ],
    );
  }
}
