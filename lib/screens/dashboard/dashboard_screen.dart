import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/recent_file.dart';
import 'package:flutter_responsive_dashboard/responsive.dart';

import '../../constants.dart';
import './components/header.dart';
import './components/storage_details.dart';
import './components/my_files.dart';
import 'components/recent_files.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const Header(),
          const SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: Responsive.isDesktop(context) ? 5 : 6,
                child: Column(
                  children: [
                    const MyFiles(),
                    const RecentFiles(),
                    if (Responsive.isMobile(context))
                      const Padding(
                        padding: EdgeInsets.only(top: defaultPadding),
                        child: StorageDetails(),
                      ),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: Responsive.isDesktop(context) ? 2 : 3,
                  child: const Padding(
                    padding: EdgeInsets.only(left: defaultPadding),
                    child: StorageDetails(),
                  ),
                )
            ],
          ),
        ],
      ),
    ));
  }
}
