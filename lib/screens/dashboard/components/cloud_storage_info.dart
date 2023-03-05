import 'package:flutter/material.dart';

import '../../../constants.dart';

class CloudStorageInfo extends StatelessWidget {
  const CloudStorageInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: defaultPadding,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(0.1)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
