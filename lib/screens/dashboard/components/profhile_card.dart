
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfhileCard extends StatelessWidget {
  const ProfhileCard({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),
      decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset("assets/images/profile_pic.png"),
          Padding(
            padding: const EdgeInsets.all(defaultPadding/2),
            child: Text('Shubano'),
          ),
          const Icon(Icons.keyboard_arrow_down_outlined)
        ],
      ),
    );
  }
}