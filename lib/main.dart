import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 17, 17),
        elevation: 0,
        // leading: const Text(
        //   "トーク",
        //   style: TextStyle(fontSize: 28),
        // ),
        // leadingWidth: 100,
        title: Row(
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
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.menu,
                    size: 28,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 12.0,
                  ),
                  child: Icon(
                    Icons.message_outlined,
                    size: 28,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 12.0,
                  ),
                  child: Icon(
                    Icons.more_vert_rounded,
                    size: 28,
                  ),
                ),
              ],
            )
          ],
        ),
        centerTitle: false,
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(right: 12.0),
        //     child: Icon(
        //       Icons.menu,
        //       size: 28,
        //     ),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.only(right: 12.0),
        //     child: Icon(Icons.message_outlined, size: 28),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.only(right: 12.0),
        //     child: Icon(Icons.more_vert_rounded, size: 28),
        //   ),
        // ],
      ),
      // TODO: スクロールできる箇所だけにしよう（現状は最下部もできてしまう）） //修正済
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 28, 28),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 170, 170, 170),
                        ),
                        Text(
                          "検索",
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Color.fromARGB(255, 170, 170, 170),
                    ),
                  ],
                ),
              ),
            ),
            //スクロール出来る部分
            SizedBox(
              // TODO: heightを固定値にしない（要素数によって変わるので） //修正済
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                //separated:区切り線
                itemBuilder: (context, index) => ListTile(
                  isThreeLine: true,
                  // TODO: こんな感じで画像を表示できる
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                  ),
                  title: Text(
                    "Title ${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "subtitle ${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // TODO: subtitleも実装してみよう
                ),
                // TODO: separator必要ですか？？  //消去済
                itemCount: 30,
              ),
            ),
            // TODO: BottomNavigationBar, Stack + Positionedで実装してみよう
            //Lineの一番下の部分
            Container(
              height: 68,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.ac_unit_sharp,
                            color: Color.fromARGB(255, 170, 170, 170),
                            size: 30,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "検索",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.ac_unit_sharp,
                            color: Color.fromARGB(255, 170, 170, 170),
                            size: 30,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "検索",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.ac_unit_sharp,
                            color: Color.fromARGB(255, 170, 170, 170),
                            size: 30,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "検索",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.ac_unit_sharp,
                            color: Color.fromARGB(255, 170, 170, 170),
                            size: 30,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "検索",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.ac_unit_sharp,
                            color: Color.fromARGB(255, 170, 170, 170),
                            size: 30,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "検索",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
