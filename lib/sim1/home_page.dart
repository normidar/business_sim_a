import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageState(),
    );
  }
}

class HomePageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '现金50万|钢铁侠有限公司',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 70,
            horizontal: 50,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                getButtonContainer('订单'),
                getButtonContainer('生产线'),
                getButtonContainer('仓库'),
                getButtonContainer('出纳'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getButtonContainer(String title) {
    // final title = '订单';
    final data = '0/0';
    return Padding(
      padding: EdgeInsets.only(bottom: 35),
      child: InkWell(
        splashColor: Colors.white,
        onTap: () {
          print('abc');
        },
        child: Ink(
          // alignment: Alignment.center,
          width: double.infinity,
          height: 100,
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 29),
              ),
              Text(
                data,
                style: TextStyle(fontSize: 29),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
