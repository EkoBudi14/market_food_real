// To parse this JSON data, do
//
//     final foods = foodsFromJson(jsonString);

import 'dart:convert';

Foods foodsFromJson(String str) => Foods.fromJson(json.decode(str));

String foodsToJson(Foods data) => json.encode(data.toJson());

class Foods {
    Foods({
        required this.meta,
        required this.data,
    });

    Meta meta;
    Data data;

    factory Foods.fromJson(Map<String, dynamic> json) => Foods(
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
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        required this.links,
        this.nextPageUrl,
        required this.path,
        required this.perPage,
        this.prevPageUrl,
        required this.to,
        required this.total,
    });

    int currentPage;
    List<Datum> data;
    String firstPageUrl;
    int from;
    int lastPage;
    String lastPageUrl;
    List<Link> links;
    dynamic nextPageUrl;
    String path;
    int perPage;
    dynamic prevPageUrl;
    int to;
    int total;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class Datum {
    Datum({
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

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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

class Link {
    Link({
        this.url,
        required this.label,
        required this.active,
    });

    String? url;
    dynamic label;
    bool active;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
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
