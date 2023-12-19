import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyles.font13DarkBlueRegular,
        ),
        TextButton(
          onPressed: () {
           context.pushNamed(Routes.signUp);
          },
          child: Text(
            'Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ),
      ],
    );
  }
}