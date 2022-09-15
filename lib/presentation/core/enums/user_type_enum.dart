enum UserType {
  pregnant,
  parent,
  pfp,
  unmarried,
  motherThreePlus,
  newlyMarried,
  notSet,
}

extension UserTypeExtension on UserType {
  static const userTypes = {
    UserType.pregnant: 'pregnant',
    UserType.parent: 'parent',
    UserType.pfp: 'pfp',
    UserType.unmarried: 'unmarried',
    UserType.motherThreePlus: 'motherThreePlus',
    UserType.newlyMarried:'newlyMarried',
    UserType.notSet: 'notSet',
  };

  String? get userType => userTypes[this];
}
