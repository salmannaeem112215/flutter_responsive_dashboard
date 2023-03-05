import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/recent_file.dart';

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
                flex: 5,
                child: Column(
                  children: const [
                    MyFiles(),
                    RecentFiles(),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding),
              const Expanded(flex: 2, child: StorageDetails())
            ],
          ),
        ],
      ),
    ));
  }
}
