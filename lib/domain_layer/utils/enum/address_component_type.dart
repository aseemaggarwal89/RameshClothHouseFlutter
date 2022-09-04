// ignore_for_file: constant_identifier_names

enum AddressComponentType{
  /// A precise street address.
  STREET_ADDRESS,
  /// A named route (such as "US 101").
  ROUTE,
  /// A major intersection, usually of two major roads.
  INTERSECTION,
  /// A continent.
  CONTINENT,
  /// A political entity. Usually, this type indicates a polygon of some civil administration.
  POLITICAL,
  /// A national political entity, typically the highest order type returned by the Geocoder.
  COUNTRY,
  /// A first-order civil entity below the country level. Within the United States, these
  /// administrative levels are states. Not all nations exhibit these administrative levels.
  ADMINISTRATIVE_AREA_LEVEL_1,
  /// A second-order civil entity below the country level. Within the United States, these
  /// administrative levels are counties. Not all nations exhibit these administrative levels.
  ADMINISTRATIVE_AREA_LEVEL_2,
  /// A third-order civil entity below the country level. This type indicates a minor civil
  /// division.
  /// Not all nations exhibit these administrative levels.
  ADMINISTRATIVE_AREA_LEVEL_3,
  /// A fourth-order civil entity below the country level. This type indicates a minor civil
  /// division. Not all nations exhibit these administrative levels.
  ADMINISTRATIVE_AREA_LEVEL_4,
  /// A fifth-order civil entity below the country level. This type indicates a minor civil
  /// division.
  /// Not all nations exhibit these administrative levels.
  ADMINISTRATIVE_AREA_LEVEL_5,
  /// A commonly-used alternative name for the entity.
  COLLOQUIAL_AREA,
  /// An incorporated city or town political entity.
  LOCALITY,
  /// A specific type of Japanese locality, used to facilitate distinction between multiple
  /// locality
  /// components within a Japanese address.
  WARD,
  /// A first-order civil entity below a locality. For some locations may receive one of the
  /// additional types: sublocality_level_1 to sublocality_level_5. Each sublocality level is a
  /// civil
  /// entity. Larger numbers indicate a smaller geographic area.
  SUBLOCALITY,
  SUBLOCALITY_LEVEL_1,
  SUBLOCALITY_LEVEL_2,
  SUBLOCALITY_LEVEL_3,
  SUBLOCALITY_LEVEL_4,
  SUBLOCALITY_LEVEL_5,
  /// A named neighborhood.
  NEIGHBORHOOD,
  /// A named location, usually a building or collection of buildings with a common name.
  PREMISE,
  /// A first-order entity below a named location, usually a singular building within a collection
  /// of
  /// buildings with a common name.
  SUB_PREMISE,
  /// A postal code as used to address postal mail within the country.
  POSTAL_CODE,
  /// A postal code prefix as used to address postal mail within the country.
  POSTAL_CODE_PREFIX,
  /// A postal code suffix as used to address postal mail within the country.
  POSTAL_CODE_SUFIX,
  /// A prominent natural feature.
  NATURAL_FEATURE,
  /// An airport.
  AIRPORT,
  /// A named park.
  PARK,
  /// A named point of interest. Typically, these "POI"s are prominent local entities that don't
  /// easily fit in another category, such as "Empire State Building" or "Statue of Liberty."
  POINT_OF_INTEREST,
  /// The floor of a building address.
  FLOOR,
  /// Typically indicates a place that has not yet been categorized.
  ESTABLISHMENT,
  /// A parking lot or parking structure.
  PARKING,
  /// A specific postal box.
  POST_BOX,
  /// A grouping of geographic areas, such as locality and sublocality, used for mailing addresses
  /// in
  /// some countries.
  POSTAL_TOWN,
  /// The room of a building address.
  ROOM,
  /// The precise street number of an address.
  STREET_NUMBER,
  /// The location of a bus stop.
  BUS_STATION,
  /// The location of a train station.
  TRAIN_STATION,
  /// The location of a subway station.
  SUBWAY_STATION,
  /// The location of a transit station.
  TRANSIT_STATUS,
  /// The location of a light rail station.
  LIGHT_RAIL_STATION,
  /// A general contractor.
  GENERAL_CONTRACTOR,
  /// A food service establishment.
  FOOD,
  /// A real-estate agency.
  REAL_ESTATE_AGENCY,
  /// A car-rental establishment.
  CAR_RENTAL,
  /// A travel agency.
  TRAVEL_AGENCY,
  /// An electronics store.
  ELECTRONICS_STORE,
  /// A feed goods store.
  HOME_GOODS_STORE,
  /// A school.
  SCHOOL,
  /// A store.
  STORE,
  /// A shopping mall.
  SHOPPING_MALL,
  /// A lodging establishment.
  LODGING,
  /// An art gallery.
  ART_GALLERY,
  /// A lawyer.
  LAWYER,
  /// A restaurant.
  RESTAURANT,
  /// A bar.
  BAR,
  /// A take-away meal establishment.
  MEAL_TAKEAWAY,
  /// A clothing store.
  CLOTHING_STORE,
  /// A local government office.
  LOCAL_GOVERMENT_OFFICE,
  /// A finance establishment.
  FINANCE,
  /// A moving company.
  MOVING_COMPANY,
  /// A storage establishment.
  STORAGE,
  /// A cafe.
  CAFE,
  /// A car repair establishment.
  CAR_REPAIR,
  /// A health service provider.
  HEALTH,
  /// An insurance agency.
  INSURANCE_AGENCY,
  /// A painter.
  PAINTER,
  /// An archipelago.
  ARCHIPELAGO,
  /// A museum.
  MUSEUM,
  /// A campground.
  CAMPGROUND,
  /// An RV park.
  RV_PARK,
  /// Indicates an unknown address component type returned by the server. The Java Client for
  /// Google
  /// Maps Services should be updated to support the new value.
  UNKNOWN;
}