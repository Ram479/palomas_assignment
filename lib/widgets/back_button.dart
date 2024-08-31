import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BackNavigationWidget extends StatelessWidget {
  final VoidCallback? handleback;

  const BackNavigationWidget({
    super.key,
    this.handleback,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                if (context.router.canPop())
                  Flexible(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: theme.colorScheme.onBackground,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        context.router.pop();
                        handleback != null ? handleback!() : null;
                      },
                      icon: const Icon(Icons.arrow_left_sharp),
                      label: const Text(
                        'Back',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
