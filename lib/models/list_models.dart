class ListItem {
  String name;
  String phoneNumber;
  String address; // Add address if needed for the detail page
  bool isFavorite;

  ListItem({required this.name,
    required this.phoneNumber,
    required this.address,
    this.isFavorite=false
  });
}