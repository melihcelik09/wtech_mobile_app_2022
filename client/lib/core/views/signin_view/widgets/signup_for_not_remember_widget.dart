import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';
import '../../common/widgets/text/custom_text.dart';

class SignUpForNotRemember extends StatelessWidget {
  const SignUpForNotRemember({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomText(
        fontSize: 18,
        L10n.of(context)!.notMember,
      ),
      TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {},
          child: CustomText(
            fontSize: 18,
            color: Colors.blue,
            L10n.of(context)!.signUpHere,
          )),
    ]);
  }
}