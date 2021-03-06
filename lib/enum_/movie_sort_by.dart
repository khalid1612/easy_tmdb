enum MovieSortBy {
  POPULARITY,
  RELEASE_DATE,
  REVENUE,
  PRIMARY_RELEASE_DATE,
  ORIGINAL_TITLE,
  VOTE_AVERAGE,
  VOTE_COUNT
}

extension normalize on MovieSortBy {
  String get asc {
    return this.toString().split('.').last.toLowerCase() + ".asc".trim();
  }

  String get desc {
    return this.toString().split('.').last.toLowerCase() + ".desc".trim();
  }
}
