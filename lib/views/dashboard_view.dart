import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/responsive_layout_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
