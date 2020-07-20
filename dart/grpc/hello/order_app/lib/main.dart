import 'package:flutter/material.dart';
import 'package:orderapp/src/generated/order.pb.dart';
import 'package:orderapp/src/my_order_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'おまかせメニュー',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'おまかせメニュー'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _budgets = [300, 1000, 5000];
  List<Menu> menus = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 8,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: this.menus.length,
                itemBuilder: ((context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(this.menus[index].type[0]),
                      ),
                      title: Text(this.menus[index].name),
                      subtitle: Text('${this.menus[index].price.toString()}円'),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                  '合計: ${this.menus.fold(0, (prevSum, menu) => prevSum + menu.price)}円'),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _budgets
                    .map(
                      (budget) => FlatButton(
                        onPressed: (() async {
                          var response = await MyOrderClient().fetch(budget);
                          setState(() {
                            this.menus = response.menus;
                          });
                        }),
                        child: Text('$budget円'),
                        color: Colors.green[100],
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
