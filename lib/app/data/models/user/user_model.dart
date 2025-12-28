import 'package:bestdroid/app/core/constants/hive_constants.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

class AuthResponse {
  AuthResponse({
    required this.status,
    required this.authData,
    required this.message,
  });

  final int? status;
  final AuthData? authData;
  final String? message;

  AuthResponse copyWith({
    int? status,
    AuthData? authData,
    String? message,
  }) {
    return AuthResponse(
      status: status ?? this.status,
      authData: authData ?? this.authData,
      message: message ?? this.message,
    );
  }

  factory AuthResponse.fromJson(Map<String, dynamic> json){
    return AuthResponse(
      status: json["status"],
      authData: json["data"] == null ? null : AuthData.fromJson(json["data"]),
      message: json["message"],
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": authData?.toJson(),
    "message": message,
  };

  @override
  String toString(){
    return "$status, $authData, $message, ";
  }

}

class AuthData {
  AuthData({
    required this.userDto,
    required this.token,
  });

  final UserDto? userDto;
  final String? token;

  AuthData copyWith({
    UserDto? userDto,
    String? token,
  }) {
    return AuthData(
      userDto: userDto ?? this.userDto,
      token: token ?? this.token,
    );
  }

  factory AuthData.fromJson(Map<String, dynamic> json){
    return AuthData(
      userDto: json["user"] == null ? null : UserDto.fromJson(json["user"]),
      token: json["token"],
    );
  }

  Map<String, dynamic> toJson() => {
    "user": userDto?.toJson(),
    "token": token,
  };

  @override
  String toString(){
    return "$userDto, $token, ";
  }

}

@HiveType(typeId: HiveConstants.userDtoId)
class UserDto {
  UserDto({
     this.id,
     this.fullName,
     this.gender,
     this.levelId,
     this.majorId,
     this.mobile,
     this.avatar,
     this.type,
     this.isConfirm,
     this.expireDays,
     this.rate,
     this.status,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? fullName;
  @HiveField(2)
  final num? gender;
  @HiveField(3)
  final int? levelId;
  @HiveField(4)
  final int? majorId;
  @HiveField(5)
  final String? mobile;
  @HiveField(6)
  final String? avatar;
  @HiveField(7)
  final String? type;
  @HiveField(8)
  final num? isConfirm;
  @HiveField(9)
  final num? expireDays;
  @HiveField(10)
  final num? rate;
  @HiveField(11)
  final num? status;

  UserDto copyWith({
    int? id,
    String? fullName,
    num? gender,
    int? levelId,
    int? majorId,
    String? mobile,
    String? avatar,
    String? type,
    num? isConfirm,
    num? expireDays,
    num? rate,
    num? status,
  }) {
    return UserDto(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      levelId: levelId ?? this.levelId,
      majorId: majorId ?? this.majorId,
      mobile: mobile ?? this.mobile,
      avatar: avatar ?? this.avatar,
      type: type ?? this.type,
      isConfirm: isConfirm ?? this.isConfirm,
      expireDays: expireDays ?? this.expireDays,
      rate: rate ?? this.rate,
      status: status ?? this.status,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json){
    return UserDto(
      id: json["id"],
      fullName: json["full_name"],
      gender: json["gender"],
      levelId: json["level_id"],
      majorId: json["major_id"],
      mobile: json["mobile"],
      avatar: json["avatar"],
      type: json["type"],
      isConfirm: json["isConfirm"],
      expireDays: json["expireDays"],
      rate: json["rate"],
      status: json["status"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "full_name": fullName,
    "gender": gender,
    "level_id": levelId,
    "major_id": majorId,
    "mobile": mobile,
    "avatar": avatar,
    "type": type,
    "isConfirm": isConfirm,
    "expireDays": expireDays,
    "rate": rate,
    "status": status,
  };

  @override
  String toString(){
    return "$id, $fullName, $gender, $levelId, $majorId, $mobile, $avatar, $type, $isConfirm, $expireDays, $rate, $status, ";
  }

}

/*
{
	"status": 1,
	"authData": {
		"userDto": {
			"id": 1032,
			"full_name": "فرزاد روشن",
			"gender": 1,
			"level_id": 0,
			"major_id": 0,
			"mobile": "09232527612",
			"avatar": "avatar.png",
			"type": "teacher",
			"isConfirm": 0,
			"expireDays": 0,
			"rate": 0,
			"status": 1
		},
		"token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3N0YWdpbmcuc2FuamFrYXBwLmlyL2FwaS92MS91c2VyL2F1dGgvdmVyaWZ5TnVtYmVyIiwiaWF0IjoxNzYzMjEzNzUzLCJleHAiOjE3NjU4MDU3NTMsIm5iZiI6MTc2MzIxMzc1MywianRpIjoiV3hjYlVxT0VQTEE0dlZ4USIsInN1YiI6IjEwMzIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.zoNvQStViENodb8BsyffpW_uGq7YWwBRJW955k09AvY"
	},
	"message": "ثبت نام با موفقیت انجام شد"
}*/