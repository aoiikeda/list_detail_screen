import 'package:flutter/material.dart';
import 'package:test3/group_class.dart';

class GroupPage extends StatelessWidget {
  final GroupModel groupModel;

  const GroupPage({Key? key, required this.groupModel}) : super(key: key);

  // membersInfo() {
  //   for (var member in groupModel.memberInfo) {
      // Align(
      //   alignment: Alignment.centerLeft,
      //   child: Text(
      //     '・${member.name!} (年齢：${member.age!})\n　　パート：${member.part!}',
      //     style: const TextStyle(
      //       fontSize: 18.0,
      //     ),
      //   ),
      // );
  //   } // for
  // } // embersInfo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // デフォルトでついてる画面遷移先の矢印をfalseにして消す
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(groupModel.groupName!),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                groupModel.groupName!,
                style: const TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '結成年：${groupModel.foundationDate!}',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Expanded(
                  child: Image.asset(groupModel.picture!),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'メンバー',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),

            // membersInfo(),

            for (var member in groupModel.memberInfo)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '・${member.name!} (年齢：${member.age!})\n　　パート：${member.part!}',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),

            // for (var member in groupModel.memberInfo)
            //   Text(member.name!),

            // groupModel.memberInfo.forEach((member) {
            //   Text(member.name!);
            // }),

            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 50,
            ),

            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('戻る'),
            ),
          ],
        ),
      ),
    );
  }
}

// memo
// groupClass.memberInfo.map((member) {
//                 return Text(member.name!);
//               }).toList(),

// for (var member in groupClass.memberInfo)
//                   Text(member.name!),
// ↑の実行結果どっちも：それぞれのmemberの名前羅列
