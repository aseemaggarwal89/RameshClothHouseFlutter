// ignore_for_file: constant_identifier_names

enum PostType{
  EXPERT_POST,
  EXPERT_REVIEW,
  SIMILAR_MOM_POST,
  SIMILAR_MOM_REVIEW

}

extension PostTypeExtension on PostType{
  String get postType{
    switch(this){
      case PostType.EXPERT_POST:
        return 'EXPERT POST';
      case PostType.EXPERT_REVIEW:
        return 'EXPERT REVIEW';
      case PostType.SIMILAR_MOM_POST:
        return 'SIMILAR MOM POST';
      case PostType.SIMILAR_MOM_REVIEW:
        return 'SIMILAR MOM REVIEW';
    }
  }
}