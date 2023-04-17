// To parse this JSON data, do
//
//     final transaction = transactionFromJson(jsonString);

import 'dart:convert';

Transaction transactionFromJson(String str) => Transaction.fromJson(json.decode(str));

String transactionToJson(Transaction data) => json.encode(data.toJson());

class Transaction {
    Transaction({
        required this.meta,
        required this.data,
    });

    Meta meta;
    Data data;

    factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
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
        required this.foodId,
        required this.userId,
        required this.quantity,
        required this.total,
        required this.status,
        required this.paymentUrl,
        this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.food,
        required this.user,
    });

    int id;
    int foodId;
    int userId;
    int quantity;
    int total;
    String status;
    String paymentUrl;
    dynamic deletedAt;
    int createdAt;
    int updatedAt;
    Food food;
    User user;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        foodId: json["food_id"],
        userId: json["user_id"],
        quantity: json["quantity"],
        total: json["total"],
        status: json["status"],
        paymentUrl: json["payment_url"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        food: Food.fromJson(json["food"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "food_id": foodId,
        "user_id": userId,
        "quantity": quantity,
        "total": total,
        "status": status,
        "payment_url": paymentUrl,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "food": food.toJson(),
        "user": user.toJson(),
    };
}

class Food {
    Food({
        required this.id,
        required this.picturePath,
        required this.name,
        required this.description,
        required this.ingredients,
        required this.price,
        required this.rate,
        required this.types,
        this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String picturePath;
    String name;
    String description;
    String ingredients;
    int price;
    int rate;
    String types;
    dynamic deletedAt;
    int createdAt;
    int updatedAt;

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        picturePath: json["picturePath"],
        name: json["name"],
        description: json["description"],
        ingredients: json["ingredients"],
        price: json["price"],
        rate: json["rate"],
        types: json["types"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "picturePath": picturePath,
        "name": name,
        "description": description,
        "ingredients": ingredients,
        "price": price,
        "rate": rate,
        "types": types,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

class User {
    User({
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
        required this.profilePhotoPath,
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
    String profilePhotoPath;
    String profilePhotoUrl;

    factory User.fromJson(Map<String, dynamic> json) => User(
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
