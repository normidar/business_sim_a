import 'package:flutter/material.dart';

class GameListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        buttonTheme: ButtonThemeData(minWidth: double.maxFinite, height: 50),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Level'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 5,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sim1'),
                    ),
                  ),
                ),
                // 空白空間
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.3,
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sim1'),
                    ),
                  ),
                ),
                // 空白空間
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.3,
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sim1'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
