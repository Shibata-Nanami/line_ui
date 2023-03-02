import 'package:flutter/material.dart';
//material.dart:Flutterアプリ開発に必要なファイルをすべて包含しているファイル

//ヘッダー部分作成
class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //水平方向にWidgetを並べる
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween, //子たちの間に空きスペースを均等に置く。 開始/終了にはスペースを設けない。
      children: [
        const Text(
          //テキスト設定
          "トーク",
          style: TextStyle(
            //テキストのスタイル設定
            fontSize: 28, //文字の大きさ
            fontWeight: FontWeight.w600, //文字の太さ
          ),
        ),
        Row(
          //水平方向にWidgetを並べる
          children: const [
            //以下、アイコン設定
            HeaderIcon(icon: Icons.menu),
            HeaderIcon(icon: Icons.message_outlined),
            HeaderIcon(icon: Icons.more_vert_rounded),
          ],
        )
      ],
    );
  }
}

//ヘッダーアイコン設定
class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    super.key,
    required this.icon, //required:必須であることを示す
  });

  final IconData icon; //dartファイル設置

  @override
  Widget build(BuildContext context) {
    return Padding(
      //余白設定
      padding: const EdgeInsets.only(right: 12.0), //only：指定したい方向に余白を設定
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
