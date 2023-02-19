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
      name: "Smile Foundation",
      description: "http://www.smilefoundationindia.org/",
      email: "contact@smilefoundationindia.org",
      logo: "http://www.smilefoundationindia.org/images/logo.png",
      tags: [Tags.environment, Tags.culture]
    ),
    OrganizationModel(
      id: '2',
      name: "Make a Wish",
      description: "http://www.makeawish.org/",
      email: "contact@makeawish.org",
      logo: "http://www.makeawish.org/images/logo.png",
      tags: [Tags.racialJustice, Tags.lgbtq]
    ),
    OrganizationModel(
      id: '3',
      name: "Water.org",
      description: "http://www.water.org/",
      email: "contact@water.org",
      logo: "http://www.water.org/images/logo.png",
      tags: [Tags.disability, Tags.animals]
    ),
  ];
}

class DummyVolunteers {
  static List<VolunteerModel> volunteers = [
    VolunteerModel(
      id: '1',
      name: 'Volunteer 1',
      email: 'dummy@email.com',
      profilePicture: '',
      bio:
          'This is a description of the volunteer. I am a volunteer. I like to volunteer. I volunteer a lot. ',
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
