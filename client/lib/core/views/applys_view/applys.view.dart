import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import '../view_model_sample_two/sample_two.viewmodel.dart';
import 'applys.widgets.dart';

class ApplysView extends StatelessWidget with ApplysWidgets {
  ApplysView({super.key});

  final _vm = GetIt.I.get<SampleViewModelTwo>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: L10n.of(context)!.apply),
      body: Padding(
        padding: context.paddingNormal,
        child: DefaultTabController(
          length: applysTabbarItems(context).length,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: applysTabbar(context),
              ),
              Expanded(
                flex: 9,
                child: applysCards(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}