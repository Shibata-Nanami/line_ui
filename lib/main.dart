//import:このファイルに存在しないクラスを呼び出し可能にする
import 'package:flutter/material.dart'; //material.dart:Flutterアプリ開発に必要なファイルをすべて包含しているファイル
import 'search_bar.dart';
import 'bottom_navigation.dart';
import 'header.dart';
import 'style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //StatelessWidget:変数を定義しても自分でその値の更新はできない
  const MyApp({super.key}); //Widgetをを識別するためのもの

  @override
  Widget build(BuildContext context) {
    //Widget:UIを構築している部分
    //BuildContext:Elementのこと,一つのWidgetを保持
    return MaterialApp(
      //MaterialApp:Flutterアプリケーションの全体を管理
      title: 'Flutter Demo', //title変更
      theme: ThemeData(
        //Theme:テーマを適用するクラス,基本MaterialAppとセットで使用
        //ThemeData:ウィジェットツリーの全体的なビジュアルテーマをカスタマイズするためのクラス
        primarySwatch: Colors.green, //カラー変更
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold:メニュー表示方法を含めて画面全体を管理する部品
      backgroundColor: primaryBlack, //背景色変更
      appBar: AppBar(
        //AppBar:ヘッダー部分
        backgroundColor: primaryBlack,
        elevation: 0, //影の設定
        title: const Header(),
        centerTitle: false, // false:中央寄せを解除,true:中央寄せを設定
      ),
      body: Padding(
        //余白設定
        padding: const EdgeInsets.symmetric(
          //左と右に余白設定、vertical：上と下に同じ値の余白設定
          horizontal: 16, //余白の幅
        ),
        child: Column(
          //垂直方向にWidgetを並べる
          children: [
            const SearchForm(), //テキスト検索機能
            //以下スクロール出来る部分
            Expanded(
              //並べられたWidgetの大きさを調整
              child: ListView.builder(
                //ListView:一般的なスクロールウィジェット
                itemBuilder: (context, index) => ListTile(
                  //リスト作成
                  leading: const CircleAvatar(
                    //CircleAvatar:プロフィール画像を丸く表示するためのアバターWidget
                    backgroundImage: NetworkImage(
                      //ネットワークから画像を取得するClass
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", //画像設定
                    ),
                  ),
                  title: Text(
                    //テキスト表示させるWidget
                    "Title ${index + 1}",
                    style: const TextStyle(
                      //テキストのスタイル設定
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "subtitle ${index + 1}", //サブタイトル設定
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                itemCount: 30, //ListView.builderの要素数の設定
              ),
            ),
            //Lineの一番下の部分
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
