import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "トーク",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: const [
            HeaderIcon(icon: Icons.menu),
            HeaderIcon(icon: Icons.message_outlined),
            HeaderIcon(icon: Icons.more_vert_rounded),
          ],
        )
      ],
    );
  }
}

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
