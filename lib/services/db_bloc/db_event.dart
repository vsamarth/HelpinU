part of 'db_bloc.dart';

abstract class DbEvent {
  const DbEvent();
}

// Initialize
class DbInitEvent extends DbEvent {
  const DbInitEvent();
}

// Volunteer CRUD
class VolunteerCreateEvent extends DbEvent {
  final String name;
  final String email;

  const VolunteerCreateEvent({required this.name, required this.email});
}

class VolunteerReadEvent extends DbEvent {
  final String volunteerId;
  const VolunteerReadEvent({required this.volunteerId});
}

class VolunteerUpdateEvent extends DbEvent {
  final String? name;
  final String? bio;
  final String? profilePicture;
  final List<Tags>? interests;
  final String volunteerId;

  const VolunteerUpdateEvent({
    this.name,
    this.bio,
    this.profilePicture,
    this.interests,
    required this.volunteerId,
  });
}

// Organization CRUD
class OrganizationCreateEvent extends DbEvent {
  final String name;
  final String email;

  const OrganizationCreateEvent({required this.name, required this.email});
}

class OrganizationReadEvent extends DbEvent {
  final String organizationId;
  const OrganizationReadEvent({required this.organizationId});
}

class OrganizationUpdateEvent extends DbEvent {
  final String? name;
  final String? description;
  final String? logo;
  final List<Tags>? tags;
  final String organizationId;
  final List<String>? applications;

  const OrganizationUpdateEvent({
    this.name,
    this.description,
    this.logo,
    this.tags,
    required this.organizationId,
    this.applications,
  });
}

// Listing CRUD
class ListingCreateEvent extends DbEvent {
  final String title;
  final String description;
  final String organizationId;
  final String location;
  final String datePosted;

  const ListingCreateEvent({
    required this.title,
    required this.description,
    required this.organizationId,
    required this.location,
    required this.datePosted,
  });
}

class ListingReadEvent extends DbEvent {
  final String listingId;
  const ListingReadEvent({required this.listingId});
}

class ListingUpdateEvent extends DbEvent {
  final String? title;
  final String? description;
  final String? location;
  final String? datePosted;
  final String listingId;

  const ListingUpdateEvent({
    this.title,
    this.description,
    this.location,
    this.datePosted,
    required this.listingId,
  });
}

class ListingDeleteEvent extends DbEvent {
  final String listingId;
  const ListingDeleteEvent({required this.listingId});
}

class ListingApplyEvent extends DbEvent {
  final String listingId;
  final String volunteerId;
  const ListingApplyEvent({
    required this.listingId,
    required this.volunteerId,
  });
}
