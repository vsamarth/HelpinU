import 'package:helpin_u/constants/tags.dart';
import 'package:helpin_u/models/listing_model.dart';
import 'package:helpin_u/models/org_model.dart';
import 'package:helpin_u/models/volunteer_model.dart';

// Tag List: [ environment, education, health, poverty, racialJustice, gender, lgbtq,
//             disability, animals, mentalHealth, community,
//             humanitarian, peacebuilding, indigenous, youth, culture]
class DummyOrgs {
  static List<OrganizationModel> orgs = [
    OrganizationModel(
      id: '1',
      name: 'Organization 1',
      description: 'This is a description of the organization',
      email: '',
      logo: 'assets/images/company.png',
      tags: [Tags.racialJustice, Tags.mentalHealth],
      applications: [],
    ),
    OrganizationModel(
      id: '2',
      name: 'Organization 2',
      description: 'This is a description of the organization',
      email: '',
      logo: 'assets/images/company.png',
      tags: [Tags.racialJustice],
      applications: [],
    ),
    OrganizationModel(
      id: '3',
      name: 'Organization 3',
      description: 'This is a description of the organization',
      email: '',
      logo: 'assets/images/company.png',
      tags: [Tags.racialJustice, Tags.mentalHealth],
      applications: [],
    ),
  ];
}

class DummyVolunteers {
  static List<VolunteerModel> volunteers = [
    VolunteerModel(
      id: '1',
      name: 'Volunteer 1',
      email: '',
      profilePicture: '',
      bio: 'This is a description of the volunteer',
      interests: [Tags.indigenous, Tags.animals],
    ),
    VolunteerModel(
      id: '2',
      name: 'Volunteer 2',
      email: '',
      profilePicture: '',
      bio: 'This is a description of the volunteer',
      interests: [Tags.culture, Tags.animals],
    ),
    VolunteerModel(
        id: '3',
        name: 'Volunteer 3',
        email: '',
        profilePicture: '',
        bio: 'This is a description of the volunteer',
        interests: [Tags.disability, Tags.racialJustice]),
  ];
}

class DummyListings {
  static List<ListingModel> listings = [
    ListingModel(
      listingId: '1',
      organizationId: '1',
      title: 'Listing 1',
      description: 'This is a description of the listing',
      location: 'Location 1',
      datePosted: 'Date 1',
    ),
    ListingModel(
      listingId: '2',
      organizationId: '2',
      title: 'Listing 2',
      description: 'This is a description of the listing',
      location: 'Location 2',
      datePosted: 'Date 2',
    ),
    ListingModel(
      listingId: '3',
      organizationId: '3',
      title: 'Listing 3',
      description: 'This is a description of the listing',
      location: 'Location 3',
      datePosted: 'Date 3',
    ),
  ];
}
