library home_view;

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'home_mobile.dart';
part 'home_tablet.dart';
part 'home_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ScreenTypeLayout(
        mobile: _HomeMobile(),
        desktop: _HomeDesktop(),
        tablet: const _HomeTablet(),
      );
    });
  }
}
