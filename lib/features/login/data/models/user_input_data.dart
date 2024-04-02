import 'package:json_annotation/json_annotation.dart';
part 'user_input_data.g.dart';

@JsonSerializable()
class UserInputData {
  final String email;
  final String password;

  UserInputData(this.email, this.password);

  factory UserInputData.fromJson(Map<String, dynamic> json) =>
      _$UserInputDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserInputDataToJson(this);
}
