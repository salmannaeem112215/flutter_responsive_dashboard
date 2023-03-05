import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/responsive.dart';

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
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        const Expanded(child: SearchFeild()),
        const ProfhileCard()
      ],
    );
  }
}
