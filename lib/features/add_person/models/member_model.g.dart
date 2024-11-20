// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) => MemberModel(
      partner: json['partner'] == null
          ? null
          : MemberModel.fromJson(json['partner'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      memberId: json['memberId'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      place: json['place'] as String,
      district: json['district'] as String,
      image: json['image'] as String?,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$MemberModelToJson(MemberModel instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'name': instance.name,
      'age': instance.age,
      'place': instance.place,
      'district': instance.district,
      'image': instance.image,
      'gender': instance.gender,
      'partner': instance.partner,
      'phone': instance.phone,
      'children': instance.children,
    };
