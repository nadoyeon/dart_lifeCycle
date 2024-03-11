import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  /// 생성자(constructor) 생성완료
  HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key) {
    print('Widget Constructor 실행!');
  }

  @override
  _HomeScreenState createState() {
    print('createState 실행!');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  /// State라는 class안에 initState()가 존재함 > 무조건 super.initState()를 불러줘야함
  @override
  void initState() {
    print('initState 실행!');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies 실행!');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print('deactivate 실행!');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose 실행!');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didUpdateWidget 실행!');
    super.didUpdateWidget(oldWidget);
  }

  /// GestureDetector은 child안에 감싸져있는 위젯만 제스쳐를 감지할 수 있게 된다.
  @override
  Widget build(BuildContext context) {
    print('build 실행!');

    return GestureDetector(
      onTap: (){
        print("클릭!");
        setState((){
          number ++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
          child: Text(
            number.toString(),
          ),
        ),
      ),
    );
  }
}