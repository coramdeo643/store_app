import 'package:flutter/material.dart'; // android
// import 'package:flutter/cupertino.dart'; apple

// 코드의 진입점
void main() {
  // runApp 함수는 괄호 안에 들어가는 widget을 root widget 으로 만들어 준다
  runApp(MyApp());
}

// stl = stateless
// stf = stateful
class MyApp extends StatelessWidget {
  // const 좀 더 성능상 좋다
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Material app 을 호출한다(내부에 편리한 기능들이 너무 많이 있다)
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
} // end of MyApp

// stl 자동완성 해보기
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 layout 틀을 잡아주는 component widget!
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
