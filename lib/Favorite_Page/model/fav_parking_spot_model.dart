// Favorite_Page/model/fav_parking_spot_model.dart
// To parse this JSON data, do// To parse this JSON data, do
//
//     final favParkingSpot = favParkingSpotFromJson(jsonString);

import 'dart:convert';

List<FavParkingSpot> favParkingSpotFromJson(String str) => List<FavParkingSpot>.from(json.decode(str).map((x) => FavParkingSpot.fromJson(x)));

String favParkingSpotToJson(List<FavParkingSpot> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FavParkingSpot {
    String? name;
    String? address;
    String? endTime;
    String? location;
    String? image1;

    FavParkingSpot({
        this.name,
        this.address,
        this.endTime,
        this.location,
        this.image1,
    });

    factory FavParkingSpot.fromJson(Map<String, dynamic> json) => FavParkingSpot(
        name: json["name"],
        address: json["address"],
        endTime: json["end_time"],
        location: json["location"],
        image1: json["image1"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "end_time": endTime,
        "location": location,
        "image1": image1,
    };
}
