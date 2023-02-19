part of 'db_bloc.dart';

//TODO: Auth CRUD

class DbState extends Equatable {
  const DbState();

  @override
  List<Object> get props => [];
}

class DbInitial extends DbState {
  const DbInitial() : super();
}

// Volunteer CRUD

class VolunteerCreate extends DbState {
  final VolunteerModel volunteer;
  const VolunteerCreate({required this.volunteer}) : super();
}

class VolunteerRead extends DbState {
  final VolunteerModel volunteer;
  const VolunteerRead({required this.volunteer}) : super();
}

class VolunteerUpdate extends DbState {
  final VolunteerModel volunteer;
  const VolunteerUpdate({required this.volunteer}) : super();
}

// Organization CRUD

class OrganizationCreate extends DbState {
  final OrganizationModel organization;
  const OrganizationCreate({required this.organization}) : super();
}

class OrganizationRead extends DbState {
  final OrganizationModel organization;
  const OrganizationRead({required this.organization}) : super();
}

class OrganizationUpdate extends DbState {
  final OrganizationModel organization;
  const OrganizationUpdate({required this.organization}) : super();
}

// Listing CRUD

class ListingCreate extends DbState {
  final ListingModel listing;
  const ListingCreate({required this.listing}) : super();
}

class ListingRead extends DbState {
  final ListingModel listing;
  const ListingRead({required this.listing}) : super();
}

class ListingUpdate extends DbState {
  final ListingModel listing;
  const ListingUpdate({required this.listing}) : super();
}

class ListingDelete extends DbState {
  final ListingModel listing;
  const ListingDelete({required this.listing}) : super();
}

class ListingApply extends DbState {
  final ListingModel listing;
  final VolunteerModel volunteer;
  const ListingApply({required this.listing, required this.volunteer})
      : super();
}
