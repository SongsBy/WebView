import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUri = Uri.parse('https://velog.io/@songcoding/posts');//내가 보여주고자 하는 웹의 uri
class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)// 자바 스크립트 모드 활성화 시키는 코드 안드로이드에서 웹의
     ..loadRequest(homeUri);//loadRequest 함수를 실행하면 위에서 입력한 homeUri를 실핼 할 수있습니다.


  ///실행한 대상을 반환 해 주라는 뜻
  ///  final test = WebViewController().loadRequest();는 .loadRequest 를 실행 한 값이 test 에 저장 됩니다. 이때 ..객를 해주게 된다면?
  ///  final test2 = WebViewController()..loadRequest(); 는 loadRequest 를 실행한 대상이 반환 돰 실행만 하고 결과 값은 받지 않음


  HomeScreen({super.key});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Velog'),
        titleTextStyle: TextStyle(
          fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            controller.loadRequest(homeUri);
          }, 
              icon: Icon(
            Icons.home
            ),
          )
        ],
      ),
      body: WebViewWidget(//body 에 wqbView 위젲을 넣어줌
          controller: controller
      ),
    );
  }
}
