class ResturantsModel {
  final String resturantName;
  final String foods;
  final int price;
  final int time;
  final int closing;
  final String features;
  final double rating;
  final bool promoted;
  final String iconUrl;

  ResturantsModel(
      {required this.resturantName,
      required this.foods,
      required this.price,
      required this.time,
      required this.closing,
      required this.features,
      required this.rating,
      required this.promoted,
      required this.iconUrl});
}
