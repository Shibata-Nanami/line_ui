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
      body: SingleChildScrollView(
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
            //一番下の部分
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(children: const [
                Padding(
                  padding: EdgeInsets.only(
                    right: 12.0,
                  ),
                  child: Icon(
                    Icons.message_outlined,
                    size: 28,
                    color: Color.fromARGB(255, 170, 170, 170),
                  ),
                ),
              ]),
            ),
            //スクロール出来る部分
            SizedBox(
              height: 700,
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          "item ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => const Divider(
                        height: 1.0,
                      ),
                  itemCount: 30),
            ),
          ]),
        ),
      ),
    );
  }
}
