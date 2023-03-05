import 'package:flutter/material.dart';

import '../../constants.dart';
import './components/header.dart';
import './components/storage_details.dart';
import './components/my_files.dart';

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
            children: const [
              Expanded(
                flex: 5,
                child: MyFiles(),
              ),
              SizedBox(width: defaultPadding),
              Expanded(flex: 2, child: StorageDetails())
            ],
          )
        ],
      ),
    ));
  }
}
