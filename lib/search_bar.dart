import 'package:flutter/material.dart';
//material.dart:Flutterアプリ開発に必要なファイルをすべて包含しているファイル

import 'style.dart';

/// 検索フォーム
class SearchForm extends StatelessWidget {
  //SearchForm:テキスト検索機能
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //Container:色、位置、サイズ、子Widgetなどの作成が可能
      height: 40, //高さ設定
      width: MediaQuery.of(context).size.width, //Widgetのサイズを画面の幅や高さに合わせる
      decoration: BoxDecoration(
        //角丸、枠線、ボーダーライン等の設定が可能となる
        color: secondaryBlack, //styleで設定した色呼び出し
        borderRadius: BorderRadius.circular(4), //BorderRadius:角丸
      ),
      child: Padding(
        //余白設定
        padding: const EdgeInsets.symmetric(
          //左と右に余白設定、vertical：上と下に同じ値の余白設定
          horizontal: 8, //余白の幅
        ),
        child: Row(
          //水平方向にWidgetを並べる
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, //子たちの間に空きスペースを均等に置く。 開始/終了にはスペースを設けない。
          children: [
            Row(
              //水平方向にWidgetを並べる
              children: const [
                Icon(
                  //アイコン設定
                  Icons.search,
                  color: primaryWhite, //styleで設定した色呼び出し
                ),
                Text(
                  //テキスト設定
                  "検索",
                  style: TextStyle(
                    //テキストのスタイル設定
                    color: primaryGrey, //styleで設定した色呼び出し
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.qr_code_scanner,
              color: primaryWhite, //styleで設定した色呼び出し
            ),
          ],
        ),
      ),
    );
  }
}
