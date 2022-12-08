import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  factory ResponseModel({
    required int count,
    required List<Result> results,
  }) = _ResponseModel;
  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    required String id,
    required String title,
    required int area,
    required int price,
    required String image,
    required String nearestPoint,
    // required dynamic realestatePlanSubscription,
    // required dynamic age,
    // required dynamic nofLivingRooms,
    // required dynamic nofBedrooms,
    // required dynamic nofBathRooms,
    // required dynamic parkingCapacity,
    // required dynamic offerType,
    // required dynamic lat,
    // required dynamic lng,
    // required DateTime createdAt,
    // required User user,
    // required Category district,
    // required Category city,
    // required Category category,
    // required Category subcategory,
    // required bool isFavorite,
    // required bool isSeen,
    // required bool isSold,
    // required bool myRealestate,
    // required dynamic buildingComplexId,
    // required BuildingComplex buildingComplex,
    // required String avenueName,
    // required DateTime expiresAt,
    // required int imagesCount,
  }) = _Result;
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

// @freezed
// class BuildingComplex with _$BuildingComplex {
//   factory BuildingComplex({
//     required dynamic buildingComplexId,
//     required dynamic image,
//     required dynamic commNameAr,
//     required dynamic commNameEn,
//     required dynamic lng,
//     required dynamic lat,
//     required District district,
//   }) = _BuildingComplex;
//   factory BuildingComplex.fromJson(Map<String, dynamic> json) =>
//       _$BuildingComplexFromJson(json);
// }

// @freezed
// class District with _$District {
//   factory District({
//     required dynamic id,
//     required dynamic arName,
//     required dynamic enName,
//     required District city,
//   }) = _District;
//   factory District.fromJson(Map<String, dynamic> json) =>
//       _$DistrictFromJson(json);
// }

// @freezed
// class Category with _$Category {
//   factory Category({
//     required String id,
//     required String name,
//   }) = _Category;
//   factory Category.fromJson(Map<String, dynamic> json) =>
//       _$CategoryFromJson(json);
// }

// @freezed
// class User with _$User {
//   factory User({
//     required String id,
//     required dynamic firstname,
//     required dynamic secondname,
//     required String commNameEn,
//     required String commNameAr,
//     required String username,
//     required Role role,
//     required List<String> phoneNumbers,
//   }) = _User;
//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// }

// @freezed
// class Role with _$Role {
//   factory Role({
//     required String name,
//   }) = _Role;
//   factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
// }
