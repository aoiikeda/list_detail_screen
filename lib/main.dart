import 'package:flutter/material.dart';
import 'package:test3/group_class.dart';
import 'package:test3/group_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'band list',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Band List Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // インスタンス化
  GroupModel catClass = GroupModel(
    groupName: 'Cat Rock',
    picture: 'images/catrock.png',
    foundationDate: '2021/07/05',
    memberInfo: [
      MemberModel(name: 'Tama', age: '2', part: 'Vo.'),
      MemberModel(name: 'Mike', age: '3', part: 'Gt.'),
      MemberModel(name: 'Shiro', age: '4', part: 'Ba.')
    ],
  );

  GroupModel dogClass = GroupModel(
    groupName: 'Jazz Dog',
    picture: 'images/jazzdog.png',
    foundationDate: '2020/07/05',
    memberInfo: [
      MemberModel(name: 'Pochi', age: '2', part: 'Vo.'),
      MemberModel(name: 'Hachi', age: '3', part: 'Gt.'),
      MemberModel(name: 'Kuro', age: '4', part: 'Key.'),
    ],
  );
  GroupModel penguinClass = GroupModel(
    groupName: 'Penguin Blues',
    picture: 'images/penguin.png',
    foundationDate: '2019/07/05',
    memberInfo: [
      MemberModel(name: 'Penta', age: '2', part: 'Vo.'),
      MemberModel(name: 'Piyo', age: '3', part: 'Gt.'),
      MemberModel(name: 'Penko', age: '4', part: 'Ba.'),
      MemberModel(name: 'Pen', age: '5', part: 'Dr.'),
    ],
  );

  // リスト表示させるメソッド
  groupCard(className) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GroupPage(groupModel: className),
          ),
        );
      },
      child: SizedBox(
        width: double.infinity,
        child: Card(
          margin: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                className.groupName!,
              style: const TextStyle(fontSize: 15.0),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            groupCard(catClass), // インスタンス化したクラスのメソッド（関数？）を呼び出す
            groupCard(dogClass),
            groupCard(penguinClass),
          ],
        ),
      ),
    );
  }
}
