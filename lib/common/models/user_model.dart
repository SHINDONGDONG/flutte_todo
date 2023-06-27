class UserModel {
  final int id;
  final int isVertified;

  UserModel({
    required this.id,
    required this.isVertified,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    isVertified: json["isVertified"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "isVertified": isVertified,
  };
}
