import 'package:flutter/material.dart';

class TableItemCard extends StatelessWidget {
  final IconData icon;
  final String customIcon;
  final String label;
  final VoidCallback? onPressed;
  final double? customIconSize;
  final bool billPaid;

  const TableItemCard({
    required this.icon,
    required this.label,
    this.customIcon = "",
    this.customIconSize,
    this.onPressed,
    this.billPaid = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Card(
          margin: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  icon,
                  color: onPressed == null
                      ? theme.disabledColor
                      : theme.colorScheme.secondary,
                  size: 40,
                ),
                Wrap(
                  children: [
                    Text(
                      label,
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Container(
                  color: billPaid ? Colors.green : Colors.red,
                  child: Text(
                    billPaid ? 'Available' : 'Busy',
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
