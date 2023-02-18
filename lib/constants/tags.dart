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

import 'dart:ui';

enum Tags {
  environment,
  // education,
  // health,
  // poverty,
  racialJustice,
  // gender,
  lgbtq,
  disability,
  animals,
  mentalHealth,
  // community,
  // humanitarian,
  // peacebuilding,
  indigenous,
  // youth,
  culture
}

extension TagExtension on Tags {
  String get info {
    switch (this) {
      case Tags.environment:
        return 'Environmentalism';
      // case Tags.education:
      //   return 'Education';
      // case Tags.health:
      //   return 'Healthcare';
      // case Tags.poverty:
      //   return 'Poverty Alleviation';
      case Tags.racialJustice:
        return 'Racial Justice';
      case Tags.animals:
        return 'Animal Welfare';
      // case Tags.community:
      //   return 'Community Development';
      case Tags.culture:
        return 'Cultural Preservation';
      case Tags.disability:
        return 'Disability Rights';
      // case Tags.gender:
      //   return "Gender equality";
      // case Tags.humanitarian:
      //   return 'Humanitarian Aid';
      case Tags.indigenous:
        return 'Indigenous Rights';
      case Tags.lgbtq:
        return 'LGBTQ+ Rights';
      case Tags.mentalHealth:
        return 'Mental Health';
      // case Tags.peacebuilding:
      //   return 'Peacebuilding';
      // case Tags.youth:
      //   return 'Youth Empowerment';
    }
  }

  Color get gradientStartColor {
    switch (this) {
      case Tags.environment:
        return const Color(0xff4C8BF5);
      // case Tags.education:
      //   return const Color(0xffFFB157);
      // case Tags.health:
      //   return const Color(0xffFF5959);
      // case Tags.poverty:
      //   return const Color(0xff441DFC);
      case Tags.racialJustice:
        return const Color(0xff4E81EB);
      case Tags.animals:
        return const Color(0xffA8D62B);
      // case Tags.community:
      //   return const Color(0xff4C8BF5);
      case Tags.culture:
        return const Color(0xffFFB157);
      case Tags.disability:
        return const Color(0xffFF5959);
      // case Tags.gender:
      //   return const Color(0xff441DFC);
      // case Tags.humanitarian:
      //   return const Color(0xff4E81EB);
      case Tags.indigenous:
        return const Color(0xffA8D62B);
      case Tags.lgbtq:
        return const Color(0xff4C8BF5);
      case Tags.mentalHealth:
        return const Color(0xffFFB157);
      // case Tags.peacebuilding:
      //   return const Color(0xffFF5959);
      // case Tags.youth:
      //   return const Color(0xff441DFC);
    }
  }

  Color get gradientEndColor {
    switch (this) {
      case Tags.environment:
        return const Color(0xff4E81EB);
      // case Tags.education:
      //   return const Color(0xffFF5959);
      // case Tags.health:
      //   return const Color(0xffA8D62B);
      // case Tags.poverty:
      //   return const Color(0xff4E81EB);
      case Tags.racialJustice:
        return const Color(0xffA8D62B);
      case Tags.animals:
        return const Color(0xff4C8BF5);
      // case Tags.community:
      //   return const Color(0xff4E81EB);
      case Tags.culture:
        return const Color(0xffFF5959);
      case Tags.disability:
        return const Color(0xffA8D62B);
      // case Tags.gender:
      //   return const Color(0xff4E81EB);
      // case Tags.humanitarian:
      //   return const Color(0xffA8D62B);
      case Tags.indigenous:
        return const Color(0xff4C8BF5);
      case Tags.lgbtq:
        return const Color(0xff4E81EB);
      case Tags.mentalHealth:
        return const Color(0xffFF5959);
      // case Tags.peacebuilding:
      //   return const Color(0xffA8D62B);
      // case Tags.youth:
      //   return const Color(0xff4E81EB);
    }
  }
}
