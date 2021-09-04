import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderPageState(),
    );
  }
}

class OrderPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPageState>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('订单'),
        bottom: TabBar(
          controller: TabController(
            length: 2,
            vsync: this,
          ),
          tabs: [
            Tab(text: '所持'),
            Tab(text: '可接'),
          ],
        ),
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
                getButtonContainer('订单'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getButtonContainer(String title) {
    // final title = '订单';
    final data = '剩2季';
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
          height: 60,
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
