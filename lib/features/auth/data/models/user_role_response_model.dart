import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role_response_model.g.dart';
@JsonSerializable()
class UserResponseRole {
  @JsonKey(name: "role")
  final String? userRole;

  UserResponseRole(this.userRole);

  factory UserResponseRole.fromJson(Map<String, dynamic> json) =>
      _$UserResponseRoleFromJson(json);
}
