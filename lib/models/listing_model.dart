class ListingModel {
  final String listingId;
  final String organizationId;
  final String title;
  final String description;
  final String location;
  final String datePosted;

  ListingModel({
    required this.listingId,
    required this.organizationId,
    required this.title,
    required this.description,
    required this.location,
    required this.datePosted,
  });

  ListingModel.empty()
      : listingId = '',
        organizationId = '',
        title = '',
        description = '',
        location = '',
        datePosted = '';

  ListingModel.fromJson(Map<String, dynamic> json)
      : listingId = json['listingId'],
        organizationId = json['organizationId'],
        title = json['title'],
        description = json['description'],
        location = json['location'],
        datePosted = json['datePosted'];

  Map<String, dynamic> toJson() => {
        'listingId': listingId,
        'organizationId': organizationId,
        'title': title,
        'description': description,
        'location': location,
        'datePosted': datePosted,
      };

  @override
  String toString() {
    return 'ListingModel{listingId: $listingId, organizationId: $organizationId, title: $title,'
        '\ndescription: $description, \nlocation: $location, datePosted: $datePosted}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListingModel &&
          runtimeType == other.runtimeType &&
          listingId == other.listingId &&
          organizationId == other.organizationId &&
          title == other.title &&
          description == other.description &&
          location == other.location &&
          datePosted == other.datePosted;

  @override
  int get hashCode =>
      listingId.hashCode ^
      organizationId.hashCode ^
      title.hashCode ^
      description.hashCode ^
      location.hashCode ^
      datePosted.hashCode;

  ListingModel copyWith({
    String? listingId,
    String? organizationId,
    String? title,
    String? description,
    String? location,
    String? datePosted,
  }) {
    return ListingModel(
      listingId: listingId ?? this.listingId,
      organizationId: organizationId ?? this.organizationId,
      title: title ?? this.title,
      description: description ?? this.description,
      location: location ?? this.location,
      datePosted: datePosted ?? this.datePosted,
    );
  }
}
