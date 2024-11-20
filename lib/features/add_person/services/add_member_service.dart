// import 'package:dartz/dartz.dart';
// import 'package:ftree/core/errors/error_handling.dart';
// import 'package:ftree/core/keys.dart';
// import 'package:ftree/features/add_person/models/member_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:uuid/uuid.dart';

// class AddMemberService {
//   Future<Either<Failure, MemberModel>> addMember({
//     required String name,
//     required int age,
//     required String place,
//     required String district,
//     required String? image,
//     required String gender,
//     required String phone,
//   }) async {
//     final SharedPreferences sharedPreferences =
//         await SharedPreferences.getInstance();
//     List<MemberModel> members = [];

//     final MemberModel newMember = MemberModel(
//         memberId: const Uuid().v4(),
//         name: name,
//         age: age,
//         partner: null,
//         place: place,
//         district: district,
//         image: image,
//         gender: gender,
//         phone: phone,
//         children: []);
//     final resurl = sharedPreferences.getString(ShareKeys.users);
//     if (resurl == null) {
//       members.add(newMember);

//     }else{
//       final allMembers=
//     }

//     return right(member);
//   }
// }
