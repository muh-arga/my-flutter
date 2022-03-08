class TourismPlace {
  String name;
  String location;
  String imageAsset;

  TourismPlace(
      {required this.name, required this.location, required this.imageAsset});
}

var tourismPlaceList = [
  TourismPlace(
      name: "Surabaya Submarine Monument",
      location: "Jl Pemuda",
      imageAsset: "assets/images/submarine.jpg"),
  TourismPlace(
      name: "Kelanteng Sanggar Agung",
      location: "Kanjeran",
      imageAsset: "assets/images/klanteng.jpg"),
  TourismPlace(
      name: "House Of Sampoerna",
      location: "Krembangan Utara",
      imageAsset: "assets/images/sampoerna.jpg"),
  TourismPlace(
      name: "Tugu Pahlawan",
      location: "Alun-Alun Contong",
      imageAsset: "assets/images/pahlawan.jpg"),
  TourismPlace(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAsset: "assets/images/suroboyo.jpg"),
];
