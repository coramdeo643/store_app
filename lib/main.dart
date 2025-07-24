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
      home: Container(
        color: Colors.grey,
        child: Text("Hello Flutter"),
      ),
    );
  }
}
