// To parse this JSON data, do
//
//     final latestLaunch = latestLaunchFromJson(jsonString);

import 'dart:convert';

class LatestLaunch {
  int flightNumber;
  String missionName;
  List<dynamic> missionId;
  String launchYear;
  int launchDateUnix;
  DateTime launchDateUtc;
  DateTime launchDateLocal;
  bool isTentative;
  String tentativeMaxPrecision;
  bool tbd;
  int launchWindow;
  Rocket rocket;
  List<String> ships;
  Telemetry telemetry;
  LaunchSite launchSite;
  bool launchSuccess;
  Links links;
  String details;
  bool upcoming;
  DateTime staticFireDateUtc;
  int staticFireDateUnix;
  dynamic timeline;
  dynamic crew;
  DateTime lastDateUpdate;
  DateTime lastLlLaunchDate;
  DateTime lastLlUpdate;
  DateTime lastWikiLaunchDate;
  String lastWikiRevision;
  DateTime lastWikiUpdate;
  String launchDateSource;

  LatestLaunch({
    this.flightNumber,
    this.missionName,
    this.missionId,
    this.launchYear,
    this.launchDateUnix,
    this.launchDateUtc,
    this.launchDateLocal,
    this.isTentative,
    this.tentativeMaxPrecision,
    this.tbd,
    this.launchWindow,
    this.rocket,
    this.ships,
    this.telemetry,
    this.launchSite,
    this.launchSuccess,
    this.links,
    this.details,
    this.upcoming,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.timeline,
    this.crew,
    this.lastDateUpdate,
    this.lastLlLaunchDate,
    this.lastLlUpdate,
    this.lastWikiLaunchDate,
    this.lastWikiRevision,
    this.lastWikiUpdate,
    this.launchDateSource,
  });

  factory LatestLaunch.fromRawJson(String str) => LatestLaunch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LatestLaunch.fromJson(Map<String, dynamic> json) => LatestLaunch(
    flightNumber: json["flight_number"] == null ? null : json["flight_number"],
    missionName: json["mission_name"] == null ? null : json["mission_name"],
    missionId: json["mission_id"] == null ? null : List<dynamic>.from(json["mission_id"].map((x) => x)),
    launchYear: json["launch_year"] == null ? null : json["launch_year"],
    launchDateUnix: json["launch_date_unix"] == null ? null : json["launch_date_unix"],
    launchDateUtc: json["launch_date_utc"] == null ? null : DateTime.parse(json["launch_date_utc"]),
    launchDateLocal: json["launch_date_local"] == null ? null : DateTime.parse(json["launch_date_local"]),
    isTentative: json["is_tentative"] == null ? null : json["is_tentative"],
    tentativeMaxPrecision: json["tentative_max_precision"] == null ? null : json["tentative_max_precision"],
    tbd: json["tbd"] == null ? null : json["tbd"],
    launchWindow: json["launch_window"] == null ? null : json["launch_window"],
    rocket: json["rocket"] == null ? null : Rocket.fromJson(json["rocket"]),
    ships: json["ships"] == null ? null : List<String>.from(json["ships"].map((x) => x)),
    telemetry: json["telemetry"] == null ? null : Telemetry.fromJson(json["telemetry"]),
    launchSite: json["launch_site"] == null ? null : LaunchSite.fromJson(json["launch_site"]),
    launchSuccess: json["launch_success"] == null ? null : json["launch_success"],
    links: json["links"] == null ? null : Links.fromJson(json["links"]),
    details: json["details"] == null ? null : json["details"],
    upcoming: json["upcoming"] == null ? null : json["upcoming"],
    staticFireDateUtc: json["static_fire_date_utc"] == null ? null : DateTime.parse(json["static_fire_date_utc"]),
    staticFireDateUnix: json["static_fire_date_unix"] == null ? null : json["static_fire_date_unix"],
    timeline: json["timeline"],
    crew: json["crew"],
    lastDateUpdate: json["last_date_update"] == null ? null : DateTime.parse(json["last_date_update"]),
    lastLlLaunchDate: json["last_ll_launch_date"] == null ? null : DateTime.parse(json["last_ll_launch_date"]),
    lastLlUpdate: json["last_ll_update"] == null ? null : DateTime.parse(json["last_ll_update"]),
    lastWikiLaunchDate: json["last_wiki_launch_date"] == null ? null : DateTime.parse(json["last_wiki_launch_date"]),
    lastWikiRevision: json["last_wiki_revision"] == null ? null : json["last_wiki_revision"],
    lastWikiUpdate: json["last_wiki_update"] == null ? null : DateTime.parse(json["last_wiki_update"]),
    launchDateSource: json["launch_date_source"] == null ? null : json["launch_date_source"],
  );

  Map<String, dynamic> toJson() => {
    "flight_number": flightNumber == null ? null : flightNumber,
    "mission_name": missionName == null ? null : missionName,
    "mission_id": missionId == null ? null : List<dynamic>.from(missionId.map((x) => x)),
    "launch_year": launchYear == null ? null : launchYear,
    "launch_date_unix": launchDateUnix == null ? null : launchDateUnix,
    "launch_date_utc": launchDateUtc == null ? null : launchDateUtc.toIso8601String(),
    "launch_date_local": launchDateLocal == null ? null : launchDateLocal.toIso8601String(),
    "is_tentative": isTentative == null ? null : isTentative,
    "tentative_max_precision": tentativeMaxPrecision == null ? null : tentativeMaxPrecision,
    "tbd": tbd == null ? null : tbd,
    "launch_window": launchWindow == null ? null : launchWindow,
    "rocket": rocket == null ? null : rocket.toJson(),
    "ships": ships == null ? null : List<dynamic>.from(ships.map((x) => x)),
    "telemetry": telemetry == null ? null : telemetry.toJson(),
    "launch_site": launchSite == null ? null : launchSite.toJson(),
    "launch_success": launchSuccess == null ? null : launchSuccess,
    "links": links == null ? null : links.toJson(),
    "details": details == null ? null : details,
    "upcoming": upcoming == null ? null : upcoming,
    "static_fire_date_utc": staticFireDateUtc == null ? null : staticFireDateUtc.toIso8601String(),
    "static_fire_date_unix": staticFireDateUnix == null ? null : staticFireDateUnix,
    "timeline": timeline,
    "crew": crew,
    "last_date_update": lastDateUpdate == null ? null : lastDateUpdate.toIso8601String(),
    "last_ll_launch_date": lastLlLaunchDate == null ? null : lastLlLaunchDate.toIso8601String(),
    "last_ll_update": lastLlUpdate == null ? null : lastLlUpdate.toIso8601String(),
    "last_wiki_launch_date": lastWikiLaunchDate == null ? null : lastWikiLaunchDate.toIso8601String(),
    "last_wiki_revision": lastWikiRevision == null ? null : lastWikiRevision,
    "last_wiki_update": lastWikiUpdate == null ? null : lastWikiUpdate.toIso8601String(),
    "launch_date_source": launchDateSource == null ? null : launchDateSource,
  };
}

class LaunchSite {
  String siteId;
  String siteName;
  String siteNameLong;

  LaunchSite({
    this.siteId,
    this.siteName,
    this.siteNameLong,
  });

  factory LaunchSite.fromRawJson(String str) => LaunchSite.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LaunchSite.fromJson(Map<String, dynamic> json) => LaunchSite(
    siteId: json["site_id"] == null ? null : json["site_id"],
    siteName: json["site_name"] == null ? null : json["site_name"],
    siteNameLong: json["site_name_long"] == null ? null : json["site_name_long"],
  );

  Map<String, dynamic> toJson() => {
    "site_id": siteId == null ? null : siteId,
    "site_name": siteName == null ? null : siteName,
    "site_name_long": siteNameLong == null ? null : siteNameLong,
  };
}

class Links {
  String missionPatch;
  String missionPatchSmall;
  String redditCampaign;
  String redditLaunch;
  String redditRecovery;
  String redditMedia;
  String presskit;
  String articleLink;
  String wikipedia;
  String videoLink;
  String youtubeId;
  List<String> flickrImages;

  Links({
    this.missionPatch,
    this.missionPatchSmall,
    this.redditCampaign,
    this.redditLaunch,
    this.redditRecovery,
    this.redditMedia,
    this.presskit,
    this.articleLink,
    this.wikipedia,
    this.videoLink,
    this.youtubeId,
    this.flickrImages,
  });

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    missionPatch: json["mission_patch"] == null ? null : json["mission_patch"],
    missionPatchSmall: json["mission_patch_small"] == null ? null : json["mission_patch_small"],
    redditCampaign: json["reddit_campaign"] == null ? null : json["reddit_campaign"],
    redditLaunch: json["reddit_launch"] == null ? null : json["reddit_launch"],
    redditRecovery: json["reddit_recovery"] == null ? null : json["reddit_recovery"],
    redditMedia: json["reddit_media"] == null ? null : json["reddit_media"],
    presskit: json["presskit"] == null ? null : json["presskit"],
    articleLink: json["article_link"] == null ? null : json["article_link"],
    wikipedia: json["wikipedia"] == null ? null : json["wikipedia"],
    videoLink: json["video_link"] == null ? null : json["video_link"],
    youtubeId: json["youtube_id"] == null ? null : json["youtube_id"],
    flickrImages: json["flickr_images"] == null ? null : List<String>.from(json["flickr_images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "mission_patch": missionPatch == null ? null : missionPatch,
    "mission_patch_small": missionPatchSmall == null ? null : missionPatchSmall,
    "reddit_campaign": redditCampaign == null ? null : redditCampaign,
    "reddit_launch": redditLaunch == null ? null : redditLaunch,
    "reddit_recovery": redditRecovery == null ? null : redditRecovery,
    "reddit_media": redditMedia == null ? null : redditMedia,
    "presskit": presskit == null ? null : presskit,
    "article_link": articleLink == null ? null : articleLink,
    "wikipedia": wikipedia == null ? null : wikipedia,
    "video_link": videoLink == null ? null : videoLink,
    "youtube_id": youtubeId == null ? null : youtubeId,
    "flickr_images": flickrImages == null ? null : List<dynamic>.from(flickrImages.map((x) => x)),
  };
}

class Rocket {
  String rocketId;
  String rocketName;
  String rocketType;
  FirstStage firstStage;
  SecondStage secondStage;
  Fairings fairings;

  Rocket({
    this.rocketId,
    this.rocketName,
    this.rocketType,
    this.firstStage,
    this.secondStage,
    this.fairings,
  });

  factory Rocket.fromRawJson(String str) => Rocket.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rocket.fromJson(Map<String, dynamic> json) => Rocket(
    rocketId: json["rocket_id"] == null ? null : json["rocket_id"],
    rocketName: json["rocket_name"] == null ? null : json["rocket_name"],
    rocketType: json["rocket_type"] == null ? null : json["rocket_type"],
    firstStage: json["first_stage"] == null ? null : FirstStage.fromJson(json["first_stage"]),
    secondStage: json["second_stage"] == null ? null : SecondStage.fromJson(json["second_stage"]),
    fairings: json["fairings"] == null ? null : Fairings.fromJson(json["fairings"]),
  );

  Map<String, dynamic> toJson() => {
    "rocket_id": rocketId == null ? null : rocketId,
    "rocket_name": rocketName == null ? null : rocketName,
    "rocket_type": rocketType == null ? null : rocketType,
    "first_stage": firstStage == null ? null : firstStage.toJson(),
    "second_stage": secondStage == null ? null : secondStage.toJson(),
    "fairings": fairings == null ? null : fairings.toJson(),
  };
}

class Fairings {
  bool reused;
  bool recoveryAttempt;
  bool recovered;
  String ship;

  Fairings({
    this.reused,
    this.recoveryAttempt,
    this.recovered,
    this.ship,
  });

  factory Fairings.fromRawJson(String str) => Fairings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Fairings.fromJson(Map<String, dynamic> json) => Fairings(
    reused: json["reused"] == null ? null : json["reused"],
    recoveryAttempt: json["recovery_attempt"] == null ? null : json["recovery_attempt"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    ship: json["ship"] == null ? null : json["ship"],
  );

  Map<String, dynamic> toJson() => {
    "reused": reused == null ? null : reused,
    "recovery_attempt": recoveryAttempt == null ? null : recoveryAttempt,
    "recovered": recovered == null ? null : recovered,
    "ship": ship == null ? null : ship,
  };
}

class FirstStage {
  List<Core> cores;

  FirstStage({
    this.cores,
  });

  factory FirstStage.fromRawJson(String str) => FirstStage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FirstStage.fromJson(Map<String, dynamic> json) => FirstStage(
    cores: json["cores"] == null ? null : List<Core>.from(json["cores"].map((x) => Core.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "cores": cores == null ? null : List<dynamic>.from(cores.map((x) => x.toJson())),
  };
}

class Core {
  String coreSerial;
  int flight;
  int block;
  bool gridfins;
  bool legs;
  bool reused;
  bool landSuccess;
  bool landingIntent;
  String landingType;
  String landingVehicle;

  Core({
    this.coreSerial,
    this.flight,
    this.block,
    this.gridfins,
    this.legs,
    this.reused,
    this.landSuccess,
    this.landingIntent,
    this.landingType,
    this.landingVehicle,
  });

  factory Core.fromRawJson(String str) => Core.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Core.fromJson(Map<String, dynamic> json) => Core(
    coreSerial: json["core_serial"] == null ? null : json["core_serial"],
    flight: json["flight"] == null ? null : json["flight"],
    block: json["block"] == null ? null : json["block"],
    gridfins: json["gridfins"] == null ? null : json["gridfins"],
    legs: json["legs"] == null ? null : json["legs"],
    reused: json["reused"] == null ? null : json["reused"],
    landSuccess: json["land_success"] == null ? null : json["land_success"],
    landingIntent: json["landing_intent"] == null ? null : json["landing_intent"],
    landingType: json["landing_type"] == null ? null : json["landing_type"],
    landingVehicle: json["landing_vehicle"] == null ? null : json["landing_vehicle"],
  );

  Map<String, dynamic> toJson() => {
    "core_serial": coreSerial == null ? null : coreSerial,
    "flight": flight == null ? null : flight,
    "block": block == null ? null : block,
    "gridfins": gridfins == null ? null : gridfins,
    "legs": legs == null ? null : legs,
    "reused": reused == null ? null : reused,
    "land_success": landSuccess == null ? null : landSuccess,
    "landing_intent": landingIntent == null ? null : landingIntent,
    "landing_type": landingType == null ? null : landingType,
    "landing_vehicle": landingVehicle == null ? null : landingVehicle,
  };
}

class SecondStage {
  int block;
  List<Payload> payloads;

  SecondStage({
    this.block,
    this.payloads,
  });

  factory SecondStage.fromRawJson(String str) => SecondStage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
    block: json["block"] == null ? null : json["block"],
    payloads: json["payloads"] == null ? null : List<Payload>.from(json["payloads"].map((x) => Payload.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "block": block == null ? null : block,
    "payloads": payloads == null ? null : List<dynamic>.from(payloads.map((x) => x.toJson())),
  };
}

class Payload {
  String payloadId;
  List<int> noradId;
  bool reused;
  List<String> customers;
  String nationality;
  String manufacturer;
  String payloadType;
  int payloadMassKg;
  double payloadMassLbs;
  String orbit;
  OrbitParams orbitParams;
  String uid;

  Payload({
    this.payloadId,
    this.noradId,
    this.reused,
    this.customers,
    this.nationality,
    this.manufacturer,
    this.payloadType,
    this.payloadMassKg,
    this.payloadMassLbs,
    this.orbit,
    this.orbitParams,
    this.uid,
  });

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    payloadId: json["payload_id"] == null ? null : json["payload_id"],
    noradId: json["norad_id"] == null ? null : List<int>.from(json["norad_id"].map((x) => x)),
    reused: json["reused"] == null ? null : json["reused"],
    customers: json["customers"] == null ? null : List<String>.from(json["customers"].map((x) => x)),
    nationality: json["nationality"] == null ? null : json["nationality"],
    manufacturer: json["manufacturer"] == null ? null : json["manufacturer"],
    payloadType: json["payload_type"] == null ? null : json["payload_type"],
    payloadMassKg: json["payload_mass_kg"] == null ? null : json["payload_mass_kg"],
    payloadMassLbs: json["payload_mass_lbs"] == null ? null : json["payload_mass_lbs"].toDouble(),
    orbit: json["orbit"] == null ? null : json["orbit"],
    orbitParams: json["orbit_params"] == null ? null : OrbitParams.fromJson(json["orbit_params"]),
    uid: json["uid"] == null ? null : json["uid"],
  );

  Map<String, dynamic> toJson() => {
    "payload_id": payloadId == null ? null : payloadId,
    "norad_id": noradId == null ? null : List<dynamic>.from(noradId.map((x) => x)),
    "reused": reused == null ? null : reused,
    "customers": customers == null ? null : List<dynamic>.from(customers.map((x) => x)),
    "nationality": nationality == null ? null : nationality,
    "manufacturer": manufacturer == null ? null : manufacturer,
    "payload_type": payloadType == null ? null : payloadType,
    "payload_mass_kg": payloadMassKg == null ? null : payloadMassKg,
    "payload_mass_lbs": payloadMassLbs == null ? null : payloadMassLbs,
    "orbit": orbit == null ? null : orbit,
    "orbit_params": orbitParams == null ? null : orbitParams.toJson(),
    "uid": uid == null ? null : uid,
  };
}

class OrbitParams {
  String referenceSystem;
  String regime;
  dynamic longitude;
  double semiMajorAxisKm;
  double eccentricity;
  double periapsisKm;
  double apoapsisKm;
  double inclinationDeg;
  double periodMin;
  int lifespanYears;
  DateTime epoch;
  double meanMotion;
  double raan;
  double argOfPericenter;
  double meanAnomaly;

  OrbitParams({
    this.referenceSystem,
    this.regime,
    this.longitude,
    this.semiMajorAxisKm,
    this.eccentricity,
    this.periapsisKm,
    this.apoapsisKm,
    this.inclinationDeg,
    this.periodMin,
    this.lifespanYears,
    this.epoch,
    this.meanMotion,
    this.raan,
    this.argOfPericenter,
    this.meanAnomaly,
  });

  factory OrbitParams.fromRawJson(String str) => OrbitParams.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrbitParams.fromJson(Map<String, dynamic> json) => OrbitParams(
    referenceSystem: json["reference_system"] == null ? null : json["reference_system"],
    regime: json["regime"] == null ? null : json["regime"],
    longitude: json["longitude"],
    semiMajorAxisKm: json["semi_major_axis_km"] == null ? null : json["semi_major_axis_km"].toDouble(),
    eccentricity: json["eccentricity"] == null ? null : json["eccentricity"].toDouble(),
    periapsisKm: json["periapsis_km"] == null ? null : json["periapsis_km"].toDouble(),
    apoapsisKm: json["apoapsis_km"] == null ? null : json["apoapsis_km"].toDouble(),
    inclinationDeg: json["inclination_deg"] == null ? null : json["inclination_deg"].toDouble(),
    periodMin: json["period_min"] == null ? null : json["period_min"].toDouble(),
    lifespanYears: json["lifespan_years"] == null ? null : json["lifespan_years"],
    epoch: json["epoch"] == null ? null : DateTime.parse(json["epoch"]),
    meanMotion: json["mean_motion"] == null ? null : json["mean_motion"].toDouble(),
    raan: json["raan"] == null ? null : json["raan"].toDouble(),
    argOfPericenter: json["arg_of_pericenter"] == null ? null : json["arg_of_pericenter"].toDouble(),
    meanAnomaly: json["mean_anomaly"] == null ? null : json["mean_anomaly"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "reference_system": referenceSystem == null ? null : referenceSystem,
    "regime": regime == null ? null : regime,
    "longitude": longitude,
    "semi_major_axis_km": semiMajorAxisKm == null ? null : semiMajorAxisKm,
    "eccentricity": eccentricity == null ? null : eccentricity,
    "periapsis_km": periapsisKm == null ? null : periapsisKm,
    "apoapsis_km": apoapsisKm == null ? null : apoapsisKm,
    "inclination_deg": inclinationDeg == null ? null : inclinationDeg,
    "period_min": periodMin == null ? null : periodMin,
    "lifespan_years": lifespanYears == null ? null : lifespanYears,
    "epoch": epoch == null ? null : epoch.toIso8601String(),
    "mean_motion": meanMotion == null ? null : meanMotion,
    "raan": raan == null ? null : raan,
    "arg_of_pericenter": argOfPericenter == null ? null : argOfPericenter,
    "mean_anomaly": meanAnomaly == null ? null : meanAnomaly,
  };
}

class Telemetry {
  dynamic flightClub;

  Telemetry({
    this.flightClub,
  });

  factory Telemetry.fromRawJson(String str) => Telemetry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Telemetry.fromJson(Map<String, dynamic> json) => Telemetry(
    flightClub: json["flight_club"],
  );

  Map<String, dynamic> toJson() => {
    "flight_club": flightClub,
  };
}
