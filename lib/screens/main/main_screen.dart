import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/responsive.dart';

import '../dashboard/dashboard_screen.dart';
import './compoenents/slide_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              child: SlideMenu(),
            ),
          const Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}
