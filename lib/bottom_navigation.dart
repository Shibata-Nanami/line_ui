import 'package:flutter/material.dart';

import 'style.dart';

/// 画面下部のナビゲーションボタン
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 20, 19, 19),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            BottomNavigationIcon(
              icon: Icons.search_outlined,
              label: "検索",
            ),
            BottomNavigationIcon(
              icon: Icons.home_max_outlined,
              label: "TOP",
            ),
            BottomNavigationIcon(
              icon: Icons.person_2_outlined,
              label: "プロフィール",
              fontSize: 12,
            ),
            BottomNavigationIcon(
              icon: Icons.people_alt_outlined,
              label: "フレンド",
            ),
            BottomNavigationIcon(
              icon: Icons.settings,
              label: "設定",
            ),
          ],
        ),
      ),
    );
  }
}

/// ボトムナビゲーション内部のアイコン
///
/// [label] : アイコンの下に表示する文字列
///
/// [icon] : アイコン
class BottomNavigationIcon extends StatelessWidget {
  const BottomNavigationIcon({
    super.key,
    required this.label,
    required this.icon,
    this.fontSize = 14,
  });

  final String label;
  final IconData icon;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Icon(
            icon,
            color: primaryWhite,
            size: 30,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: primaryGrey,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
