import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final bool isPressed;
  const TopBar({super.key, required this.isPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 3,
          width: MediaQuery.sizeOf(context).width * .44,
          child: ColoredBox(
            color: Colors.blue.shade700,
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          height: 3,
          width: MediaQuery.sizeOf(context).width * .44,
          child: ColoredBox(
            color: isPressed ? Colors.blue.shade700 : Colors.blue.shade100.withOpacity(.4),
          ),
        )
      ],
    );
  }
}
