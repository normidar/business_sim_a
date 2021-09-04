import 'package:business_sim_a/game_list.dart';
import 'package:business_sim_a/sim1/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: StartPage(),
      ),
    );

class StartPage extends StatelessWidget {
  Future initAll(BuildContext context) async {
    // 初期化
    // await Global.init();
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) {
        return HomePage();
      }),
      (r) {
        return false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    initAll(context);
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
