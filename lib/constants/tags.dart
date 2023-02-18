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

enum Tag {
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

extension TagExtension on Tag {
  String get info {
    switch (this) {
      case Tag.environment:
        return 'Environmentalism';
      case Tag.education:
        return 'Education';
      case Tag.health:
        return 'Healthcare';
      case Tag.poverty:
        return 'Poverty Alleviation';
      case Tag.racialJustice:
        return 'Racial Justice';
      case Tag.animals:
        return 'Animal Welfare';
      case Tag.community:
        return 'Community Development';
      case Tag.culture:
        return 'Cultural Preservation';
      case Tag.disability:
        return 'Disability Rights';
      case Tag.gender:
        return "Gender equality";
      case Tag.humanitarian:
        return 'Humanitarian Aid';
      case Tag.indigenous:
        return 'Indigenous Rights';
      case Tag.lgbtq:
        return 'LGBTQ+ Rights';
      case Tag.mentalHealth:
        return 'Mental Health';
      case Tag.peacebuilding:
        return 'Peacebuilding';
      case Tag.youth:
        return 'Youth Empowerment';
    }
  }
}
