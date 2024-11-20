import 'package:freezed_annotation/freezed_annotation.dart';
part 'member_model.g.dart';

@JsonSerializable()
class MemberModel {
  @JsonKey(name: "memberId")
  final String memberId;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "age")
  final int age;
  @JsonKey(name: "place")
  final String place;
  @JsonKey(name: "district")
  final String district;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "gender")
  final String gender;
  @JsonKey(name: "partner")
  final MemberModel? partner;
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "children")
  final List<MemberModel> children;
  MemberModel(
      {required this.partner,
      required this.children,
      required this.memberId,
      required this.name,
      required this.age,
      required this.place,
      required this.district,
      required this.image,
      required this.gender,
      required this.phone});
  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
  Map<String, dynamic> toJson() => _$MemberModelToJson(this);
}
