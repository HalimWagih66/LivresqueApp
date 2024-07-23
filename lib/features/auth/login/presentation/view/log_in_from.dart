import 'package:flutter/material.dart';

import '../../../../../core/utils/TextFormField/custom_form_field.dart';
import '../../../../../core/utils/functions/validate/validate_inputs_from_text_valid.dart';

class LogInFrom extends StatefulWidget {
  const LogInFrom({super.key});

  @override
  State<LogInFrom> createState() => _LogInFromState();
}

class _LogInFromState extends State<LogInFrom> {
  bool passwordIsHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          functionValidate: (email) {
            return ValidateInputsFromTextValid.validateEmailValid(email);
          },
          hintText: "Email Address",
          prefixIcon: Icons.email_outlined,
        ),
        CustomTextFormField(
          functionValidate: (email) {
            return ValidateInputsFromTextValid.validateEmailValid(email);
          },
          hintText: "Password",
          obscureText: passwordIsHidden,
          suffixIcon: passwordIsHidden?Icons.remove_red_eye_outlined:Icons.remove_red_eye_rounded,
          prefixIcon: Icons.lock,
          onPressedSuffixIcon:(){
            setState(() {
              passwordIsHidden = !passwordIsHidden;
            });
          },
        ),
      ],
    );
  }
}
