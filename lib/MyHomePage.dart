import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var messages = const [
    'This is title',
    'This is titlesdfasfd',
    'This is titleasdf',
  ];

  var mes_subtitle = const [
    'this is subtitle',
    'try to do something with app',
    'dont know what to say about this stupid app'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Practice In Flutter 4"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: messages.length,
          itemBuilder: (BuildContext context, int index){
            var title = messages[index];
            var subtitle = mes_subtitle[index];
            return ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Icon(Icons.arrow_forward_ios)
              ),
              title: Text('${index + 1} - ' + title),
              isThreeLine: true,
              subtitle: new Text(subtitle),
              trailing: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: new Icon(Icons.restore_from_trash)
              ),
            );
      }),
    );
  }
}
/*TODO: Display Message With ListView
  ListView Builder priorities need:
    - ListView.builder()
    - itemCount
    - itemBuilder (BuildContext context, int index)

   ListView Seperate priorities need:
    - ListView.seperated() : for seperated between row in the list
    - seperatorBuilder: (context, index) => Divider()
*/