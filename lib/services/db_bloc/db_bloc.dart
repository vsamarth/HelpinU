import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:helpin_u/constants/tags.dart';
import 'package:helpin_u/models/listing_model.dart';
import 'package:helpin_u/models/org_model.dart';
import 'package:helpin_u/models/volunteer_model.dart';
part 'db_event.dart';
part 'db_state.dart';

// TODO: Add DB

final VolunteerModel dummyVolunteer = VolunteerModel(
  id: '123',
  name: 'John Doe',
  email: '',
  bio: '',
  profilePicture: '',
);

final OrganizationModel dummyOrganization = OrganizationModel(
  id: '123',
  name: 'Organization',
  description: '',
  logo: '',
  tags: [],
  applications: [],
  email: '',
);

final ListingModel dummyListing = ListingModel(
  listingId: '123',
  title: 'Listing',
  description: '',
  datePosted: '',
  organizationId: '423',
  location: '',
);

class DbBloc extends Bloc<DbEvent, DbState> {
  DbBloc() : super(const DbInitial()) {
    on<DbInitEvent>(_onDbInitEvent);
    // Volunteer CRUD
    on<VolunteerCreateEvent>(_onVolunteerCreateEvent);
    on<VolunteerReadEvent>(_onVolunteerReadEvent);
    on<VolunteerUpdateEvent>(_onVolunteerUpdateEvent);
    // Organization CRUD
    on<OrganizationCreateEvent>(_onOrganizationCreateEvent);
    on<OrganizationReadEvent>(_onOrganizationReadEvent);
    on<OrganizationUpdateEvent>(_onOrganizationUpdateEvent);
    // Listing CRUD
    on<ListingCreateEvent>(_onListingCreateEvent);
    on<ListingReadEvent>(_onListingReadEvent);
    on<ListingUpdateEvent>(_onListingUpdateEvent);
    on<ListingDeleteEvent>(_onListingDeleteEvent);

    on<ListingApplyEvent>(_onListingApplyEvent);
  }

  // Initialize
  void _onDbInitEvent(DbInitEvent event, Emitter<DbState> emit) {
    // TODO: Initialize DB
    emit(const DbInitial());
  }

  // Volunteer CRUD
  void _onVolunteerCreateEvent(
      VolunteerCreateEvent event, Emitter<DbState> emit) {
    const id = '123';
    emit(VolunteerCreate(
        volunteer: VolunteerModel(
      id: id,
      name: event.name,
      email: event.email,
      bio: '',
      profilePicture: '',
    )));
  }

  void _onVolunteerReadEvent(VolunteerReadEvent event, Emitter<DbState> emit) {
    emit(VolunteerRead(volunteer: dummyVolunteer));
  }

  void _onVolunteerUpdateEvent(
      VolunteerUpdateEvent event, Emitter<DbState> emit) {
    final updatedVolunteer = VolunteerModel(
      id: event.volunteerId,
      name: event.name ?? dummyVolunteer.name,
      email: dummyVolunteer.email,
      bio: event.bio ?? dummyVolunteer.bio,
      profilePicture: event.profilePicture ?? dummyVolunteer.profilePicture,
    );
    emit(VolunteerUpdate(volunteer: updatedVolunteer));
  }

  // Organization CRUD
  void _onOrganizationCreateEvent(
      OrganizationCreateEvent event, Emitter<DbState> emit) {
    const id = '123';
    emit(OrganizationCreate(
        organization: OrganizationModel(
      id: id,
      name: event.name,
      description: '',
      logo: '',
      tags: [],
      applications: [],
      email: event.email,
    )));
  }

  void _onOrganizationReadEvent(
      OrganizationReadEvent event, Emitter<DbState> emit) {
    emit(OrganizationRead(organization: dummyOrganization));
  }

  void _onOrganizationUpdateEvent(
      OrganizationUpdateEvent event, Emitter<DbState> emit) {
    final updatedOrganization = OrganizationModel(
      id: event.organizationId,
      name: event.name ?? dummyOrganization.name,
      description: event.description ?? dummyOrganization.description,
      logo: event.logo ?? dummyOrganization.logo,
      tags: event.tags ?? dummyOrganization.tags,
      applications: event.applications ?? dummyOrganization.applications,
      email: dummyOrganization.email,
    );
    emit(OrganizationUpdate(organization: updatedOrganization));
  }

  // Listing CRUD
  void _onListingCreateEvent(ListingCreateEvent event, Emitter<DbState> emit) {
    const id = '123';
    emit(ListingCreate(
        listing: ListingModel(
      listingId: id,
      title: event.title,
      description: '',
      datePosted: '',
      organizationId: event.organizationId,
      location: '',
    )));
  }

  void _onListingReadEvent(ListingReadEvent event, Emitter<DbState> emit) {
    emit(ListingRead(listing: dummyListing));
  }

  void _onListingUpdateEvent(ListingUpdateEvent event, Emitter<DbState> emit) {
    final updatedListing = ListingModel(
      listingId: event.listingId,
      title: event.title ?? dummyListing.title,
      description: event.description ?? dummyListing.description,
      datePosted: dummyListing.datePosted,
      organizationId: dummyListing.organizationId,
      location: event.location ?? dummyListing.location,
    );
    emit(ListingUpdate(listing: updatedListing));
  }

  void _onListingDeleteEvent(ListingDeleteEvent event, Emitter<DbState> emit) {
    emit(ListingDelete(listing: dummyListing));
  }

  void _onListingApplyEvent(ListingApplyEvent event, Emitter<DbState> emit) {
    emit(ListingApply(listing: dummyListing, volunteer: dummyVolunteer));
  }
}
