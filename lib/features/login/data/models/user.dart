import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  /*  use Jsonkey if you want change the key coming form API */
  // @JsonKey(name: "iidd")
  int? id;
  String? name;
  String? email;
  String? token;

  User({this.id, this.name, this.email, this.token});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
