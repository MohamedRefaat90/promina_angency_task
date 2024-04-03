import 'package:flutter/material.dart';

class RegisterTextBtn extends StatelessWidget {
  const RegisterTextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Not a Member?",
          style: TextStyle(color: Color(0xff838286)),
        ),
        TextButton(
          onPressed: () {},
          child:
              const Text("Register Now", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
