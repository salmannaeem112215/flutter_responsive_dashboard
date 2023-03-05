import 'package:flutter/material.dart';

import '../../../models/my_file.dart';
import '../../../constants.dart';
import './file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              icon: const Icon(Icons.add),
              label: const Text('Add New'),
              onPressed: () {},
            )
          ],
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 4 / 3,
          ),
          itemCount: 4,
          itemBuilder: (context, index) => FileInfoCard(
            info: demoMyFiles[index],
          ),
        ),
      ],
    );
  }
}
