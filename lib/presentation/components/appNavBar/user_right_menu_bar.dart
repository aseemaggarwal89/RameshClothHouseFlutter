import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';

class UserRightMenuBar extends StatelessWidget {
  const UserRightMenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            AppNavigator.navigateToLogin();
          },
          icon: const Icon(Icons.person),
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.favorite),
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.shopping_cart),
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ],
    );
  }
}
