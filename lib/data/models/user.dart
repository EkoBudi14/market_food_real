// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        required this.meta,
        required this.data,
    });

    Meta meta;
    Data data;

    factory User.fromJson(Map<String, dynamic> json) => User(
        meta: Meta.fromJson(json["meta"]),
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.id,
        required this.name,
        required this.email,
        this.emailVerifiedAt,
        required this.roles,
        this.currentTeamId,
        required this.address,
        required this.houseNumber,
        required this.phoneNumber,
        required this.city,
        required this.createdAt,
        required this.updatedAt,
        this.profilePhotoPath,
        required this.profilePhotoUrl,
    });

    int id;
    String name;
    String email;
    dynamic emailVerifiedAt;
    String roles;
    dynamic currentTeamId;
    String address;
    String houseNumber;
    String phoneNumber;
    String city;
    int createdAt;
    int updatedAt;
    dynamic profilePhotoPath;
    String profilePhotoUrl;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        roles: json["roles"],
        currentTeamId: json["current_team_id"],
        address: json["address"],
        houseNumber: json["houseNumber"],
        phoneNumber: json["phoneNumber"],
        city: json["city"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        profilePhotoPath: json["profile_photo_path"],
        profilePhotoUrl: json["profile_photo_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "roles": roles,
        "current_team_id": currentTeamId,
        "address": address,
        "houseNumber": houseNumber,
        "phoneNumber": phoneNumber,
        "city": city,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "profile_photo_path": profilePhotoPath,
        "profile_photo_url": profilePhotoUrl,
    };
}

class Meta {
    Meta({
        required this.code,
        required this.status,
        required this.message,
    });

    int code;
    String status;
    String message;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        code: json["code"],
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
    };
}
