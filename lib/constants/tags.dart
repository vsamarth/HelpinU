// Enumeration of possible tags
//
// Tag List:
// Environmentalism
// Poverty alleviation
// Education
// Healthcare
// Racial justice
// Gender equality
// Women's rights
// LGBTQ+ rights
// Disability rights
// Animal welfare
// Mental health
// Community development
// Humanitarian aid
// Peacebuilding
// Indigenous rights
// Cultural preservation
// Youth empowerment

enum Tags {
  environment,
  education,
  health,
  poverty,
  racialJustice,
  gender,
  lgbtq,
  disability,
  animals,
  mentalHealth,
  community,
  humanitarian,
  peacebuilding,
  indigenous,
  youth,
  culture
}

extension TagExtension on Tags {
  String get info {
    switch (this) {
      case Tags.environment:
        return 'Environmentalism';
      case Tags.education:
        return 'Education';
      case Tags.health:
        return 'Healthcare';
      case Tags.poverty:
        return 'Poverty Alleviation';
      case Tags.racialJustice:
        return 'Racial Justice';
      case Tags.animals:
        return 'Animal Welfare';
      case Tags.community:
        return 'Community Development';
      case Tags.culture:
        return 'Cultural Preservation';
      case Tags.disability:
        return 'Disability Rights';
      case Tags.gender:
        return "Gender equality";
      case Tags.humanitarian:
        return 'Humanitarian Aid';
      case Tags.indigenous:
        return 'Indigenous Rights';
      case Tags.lgbtq:
        return 'LGBTQ+ Rights';
      case Tags.mentalHealth:
        return 'Mental Health';
      case Tags.peacebuilding:
        return 'Peacebuilding';
      case Tags.youth:
        return 'Youth Empowerment';
    }
  }
}
