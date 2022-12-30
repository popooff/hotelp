
class Hotel {

  final String name;
  final String address;
  final double price;
  final double star;
  final String description;

  // Rooms, Location, Mq, Urls.
  final Map<String, dynamic> more;

  Hotel({
    required this.name,
    required this.address,
    required this.price,
    required this.star,
    required this.description,
    required this.more
  });

}
