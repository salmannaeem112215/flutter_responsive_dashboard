import 'package:flutter/material.dart';

import './search_field.dart';
import './profhile_card.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Spacer(flex: 2,),
        const Expanded(child: SearchFeild()),
        const ProfhileCard()
      ],
    );
  }
}


