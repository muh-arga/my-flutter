class PlaceResult {
  PlaceResult({required this.places});

  List<Place> places;

  factory PlaceResult.fromJson(Map<String, dynamic> json) => PlaceResult(
        places: List<Place>.from((json['places'] as List)
            .map((x) => Place.fromJson(x))
            .where((place) => place.imageAsset != null)),
      );
}

class Place {
  String id;
  String name;
  String location;
  String? imageAsset;
  String description;
  String openDay;
  String openHour;
  String ticketPrice;
  List<dynamic> galeries;

  Place(
      {required this.id,
      required this.name,
      required this.location,
      required this.imageAsset,
      required this.description,
      required this.openDay,
      required this.openHour,
      required this.ticketPrice,
      required this.galeries});

  factory Place.fromJson(Map<String, dynamic> json) => Place(
      id: json["_id"],
      name: json["name"],
      location: json["location"],
      imageAsset: json["imageAsset"],
      description: json["description"],
      openDay: json["openDay"],
      openHour: json["openHour"],
      ticketPrice: json["ticketPrice"],
      galeries: json["galeries"]);
}
