import 'package:flutter/material.dart';

import 'social_login_btn.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialLoginBtn(
          lable: "Google",
          svgIcon: "assets/Social Icons/google.svg",
        ),
        SizedBox(width: 20),
        SocialLoginBtn(
          lable: "Phone",
          svgIcon: "assets/Social Icons/phonew.svg",
        ),
      ],
    );
  }
}
