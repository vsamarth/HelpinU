import 'package:helpin_u/constants/tags.dart';
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
      logo: '',
      tags: [Tags.education, Tags.health],
      applications: [],
    ),
    OrganizationModel(
      id: '2',
      name: 'Organization 2',
      description: 'This is a description of the organization',
      email: '',
      logo: '',
      tags: [Tags.gender, Tags.racialJustice],
      applications: [],
    ),
    OrganizationModel(
      id: '3',
      name: 'Organization 3',
      description: 'This is a description of the organization',
      email: '',
      logo: '',
      tags: [Tags.community, Tags.mentalHealth],
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
      interests: [Tags.education, Tags.health],
    ),
    VolunteerModel(
      id: '2',
      name: 'Volunteer 2',
      email: '',
      profilePicture: '',
      bio: 'This is a description of the volunteer',
      interests: [Tags.education, Tags.health],
    ),
    VolunteerModel(
      id: '3',
      name: 'Volunteer 3',
      email: '',
      profilePicture: '',
      bio: 'This is a description of the volunteer',
      interests: [Tags.education, Tags.health],
    ),
  ];
}
