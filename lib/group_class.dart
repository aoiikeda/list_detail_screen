class GroupModel {
  String? groupName;
  String? picture;
  String? foundationDate;
  List<MemberModel> memberInfo;

  GroupModel({this.groupName, this.picture, this.foundationDate, required this.memberInfo});

}

class MemberModel {
  final String? name;
  final String? age;
  final String? part;

  MemberModel({this.name, this.age, this.part});
}

//
// // MVCモデル
//
// // GroupClass
// // グループ名
// // 画像
// // 結成年
// // メンバー情報
// //
// // MemberClass
// // 名前
// // 年齢
// // 担当楽器やパート
