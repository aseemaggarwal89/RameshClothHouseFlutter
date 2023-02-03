enum SortBy {
  CuratedForYou,
  Newest,
  PriceAsce,
  PriceDecen,
  Ratings,
}

extension SortByExtension on SortBy {
  String get title {
    switch (this) {
      case SortBy.CuratedForYou:
        return "Curated For You";
      case SortBy.Newest:
        return "Newest";
      case SortBy.PriceAsce:
        return "Price: Low to High";
      case SortBy.PriceDecen:
        return "Price: High to Low";
      case SortBy.Ratings:
        return "Ratings";
    }
  }

  String get sortByUrlKey {
    switch (this) {
      case SortBy.Newest:
        return "-createdAt";
      case SortBy.PriceAsce:
        return "price";
      case SortBy.PriceDecen:
        return "-price";
      case SortBy.Ratings:
        return "-ratingsAverage";
      case SortBy.CuratedForYou:
        return "-createdAt";
    }
  }
}
