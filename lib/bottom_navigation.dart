import 'package:flutter/material.dart';
//material.dart:Flutterアプリ開発に必要なファイルをすべて包含しているファイル

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
        color: tertiaryBlack, //styleで設定した色呼び出し
        borderRadius: BorderRadius.circular(4), //BorderRadius:角丸
      ),
      child: Padding(
        //余白設定
        padding: const EdgeInsets.symmetric(
          //左と右に余白設定、vertical：上と下に同じ値の余白設定
          horizontal: 8,
        ),
        child: Row(
          //水平方向にWidgetを並べる
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            //以下、ナビゲーション部分のアイコン設定
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

// final：これで定義すると再代入不可となる
  final String label;
  final IconData icon;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        //垂直方向にWidgetを並べる
        children: [
          Icon(
            //アイコン設定
            icon,
            color: primaryWhite, //styleで設定した色呼び出し
            size: 30, //大きさ設定
          ),
          const SizedBox(height: 4), //Widgetのサイズ変更
          Text(
            //テキスト設定
            label,
            style: TextStyle(
              //テキストのスタイル設定
              color: primaryGrey, //styleで設定した色呼び出し
              fontWeight: FontWeight.bold, //フォントの幅設定、FontWeight.bold:太字
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
