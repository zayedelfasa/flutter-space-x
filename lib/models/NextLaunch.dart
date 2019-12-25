// To parse this JSON data, do
//
//     final nextLaunch = nextLaunchFromJson(jsonString);

import 'dart:convert';

NextLaunch nextLaunchFromJson(String str) => NextLaunch.fromJson(json.decode(str));

String nextLaunchToJson(NextLaunch data) => json.encode(data.toJson());

class NextLaunch {
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
  dynamic launchWindow;
  Rocket rocket;
  List<dynamic> ships;
  Telemetry telemetry;
  LaunchSite launchSite;
  dynamic launchSuccess;
  Links links;
  String details;
  bool upcoming;
  dynamic staticFireDateUtc;
  dynamic staticFireDateUnix;
  dynamic timeline;
  dynamic crew;
  DateTime lastDateUpdate;
  DateTime lastLlLaunchDate;
  DateTime lastLlUpdate;
  DateTime lastWikiLaunchDate;
  String lastWikiRevision;
  DateTime lastWikiUpdate;
  String launchDateSource;

  NextLaunch({
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

  factory NextLaunch.fromJson(Map<String, dynamic> json) => NextLaunch(
    flightNumber: json["flight_number"],
    missionName: json["mission_name"],
    missionId: List<dynamic>.from(json["mission_id"].map((x) => x)),
    launchYear: json["launch_year"],
    launchDateUnix: json["launch_date_unix"],
    launchDateUtc: DateTime.parse(json["launch_date_utc"]),
    launchDateLocal: DateTime.parse(json["launch_date_local"]),
    isTentative: json["is_tentative"],
    tentativeMaxPrecision: json["tentative_max_precision"],
    tbd: json["tbd"],
    launchWindow: json["launch_window"],
    rocket: Rocket.fromJson(json["rocket"]),
    ships: List<dynamic>.from(json["ships"].map((x) => x)),
    telemetry: Telemetry.fromJson(json["telemetry"]),
    launchSite: LaunchSite.fromJson(json["launch_site"]),
    launchSuccess: json["launch_success"],
    links: Links.fromJson(json["links"]),
    details: json["details"],
    upcoming: json["upcoming"],
    staticFireDateUtc: json["static_fire_date_utc"],
    staticFireDateUnix: json["static_fire_date_unix"],
    timeline: json["timeline"],
    crew: json["crew"],
    lastDateUpdate: DateTime.parse(json["last_date_update"]),
    lastLlLaunchDate: DateTime.parse(json["last_ll_launch_date"]),
    lastLlUpdate: DateTime.parse(json["last_ll_update"]),
    lastWikiLaunchDate: DateTime.parse(json["last_wiki_launch_date"]),
    lastWikiRevision: json["last_wiki_revision"],
    lastWikiUpdate: DateTime.parse(json["last_wiki_update"]),
    launchDateSource: json["launch_date_source"],
  );

  Map<String, dynamic> toJson() => {
    "flight_number": flightNumber,
    "mission_name": missionName,
    "mission_id": List<dynamic>.from(missionId.map((x) => x)),
    "launch_year": launchYear,
    "launch_date_unix": launchDateUnix,
    "launch_date_utc": launchDateUtc.toIso8601String(),
    "launch_date_local": launchDateLocal.toIso8601String(),
    "is_tentative": isTentative,
    "tentative_max_precision": tentativeMaxPrecision,
    "tbd": tbd,
    "launch_window": launchWindow,
    "rocket": rocket.toJson(),
    "ships": List<dynamic>.from(ships.map((x) => x)),
    "telemetry": telemetry.toJson(),
    "launch_site": launchSite.toJson(),
    "launch_success": launchSuccess,
    "links": links.toJson(),
    "details": details,
    "upcoming": upcoming,
    "static_fire_date_utc": staticFireDateUtc,
    "static_fire_date_unix": staticFireDateUnix,
    "timeline": timeline,
    "crew": crew,
    "last_date_update": lastDateUpdate.toIso8601String(),
    "last_ll_launch_date": lastLlLaunchDate.toIso8601String(),
    "last_ll_update": lastLlUpdate.toIso8601String(),
    "last_wiki_launch_date": lastWikiLaunchDate.toIso8601String(),
    "last_wiki_revision": lastWikiRevision,
    "last_wiki_update": lastWikiUpdate.toIso8601String(),
    "launch_date_source": launchDateSource,
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

  factory LaunchSite.fromJson(Map<String, dynamic> json) => LaunchSite(
    siteId: json["site_id"],
    siteName: json["site_name"],
    siteNameLong: json["site_name_long"],
  );

  Map<String, dynamic> toJson() => {
    "site_id": siteId,
    "site_name": siteName,
    "site_name_long": siteNameLong,
  };
}

class Links {
  dynamic missionPatch;
  dynamic missionPatchSmall;
  dynamic redditCampaign;
  dynamic redditLaunch;
  dynamic redditRecovery;
  dynamic redditMedia;
  dynamic presskit;
  dynamic articleLink;
  dynamic wikipedia;
  String videoLink;
  String youtubeId;
  List<dynamic> flickrImages;

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

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    missionPatch: json["mission_patch"],
    missionPatchSmall: json["mission_patch_small"],
    redditCampaign: json["reddit_campaign"],
    redditLaunch: json["reddit_launch"],
    redditRecovery: json["reddit_recovery"],
    redditMedia: json["reddit_media"],
    presskit: json["presskit"],
    articleLink: json["article_link"],
    wikipedia: json["wikipedia"],
    videoLink: json["video_link"],
    youtubeId: json["youtube_id"],
    flickrImages: List<dynamic>.from(json["flickr_images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "mission_patch": missionPatch,
    "mission_patch_small": missionPatchSmall,
    "reddit_campaign": redditCampaign,
    "reddit_launch": redditLaunch,
    "reddit_recovery": redditRecovery,
    "reddit_media": redditMedia,
    "presskit": presskit,
    "article_link": articleLink,
    "wikipedia": wikipedia,
    "video_link": videoLink,
    "youtube_id": youtubeId,
    "flickr_images": List<dynamic>.from(flickrImages.map((x) => x)),
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

  factory Rocket.fromJson(Map<String, dynamic> json) => Rocket(
    rocketId: json["rocket_id"],
    rocketName: json["rocket_name"],
    rocketType: json["rocket_type"],
    firstStage: FirstStage.fromJson(json["first_stage"]),
    secondStage: SecondStage.fromJson(json["second_stage"]),
    fairings: Fairings.fromJson(json["fairings"]),
  );

  Map<String, dynamic> toJson() => {
    "rocket_id": rocketId,
    "rocket_name": rocketName,
    "rocket_type": rocketType,
    "first_stage": firstStage.toJson(),
    "second_stage": secondStage.toJson(),
    "fairings": fairings.toJson(),
  };
}

class Fairings {
  bool reused;
  bool recoveryAttempt;
  bool recovered;
  dynamic ship;

  Fairings({
    this.reused,
    this.recoveryAttempt,
    this.recovered,
    this.ship,
  });

  factory Fairings.fromJson(Map<String, dynamic> json) => Fairings(
    reused: json["reused"],
    recoveryAttempt: json["recovery_attempt"],
    recovered: json["recovered"],
    ship: json["ship"],
  );

  Map<String, dynamic> toJson() => {
    "reused": reused,
    "recovery_attempt": recoveryAttempt,
    "recovered": recovered,
    "ship": ship,
  };
}

class FirstStage {
  List<Core> cores;

  FirstStage({
    this.cores,
  });

  factory FirstStage.fromJson(Map<String, dynamic> json) => FirstStage(
    cores: List<Core>.from(json["cores"].map((x) => Core.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "cores": List<dynamic>.from(cores.map((x) => x.toJson())),
  };
}

class Core {
  dynamic coreSerial;
  dynamic flight;
  int block;
  dynamic gridfins;
  dynamic legs;
  bool reused;
  dynamic landSuccess;
  dynamic landingIntent;
  dynamic landingType;
  dynamic landingVehicle;

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

  factory Core.fromJson(Map<String, dynamic> json) => Core(
    coreSerial: json["core_serial"],
    flight: json["flight"],
    block: json["block"],
    gridfins: json["gridfins"],
    legs: json["legs"],
    reused: json["reused"],
    landSuccess: json["land_success"],
    landingIntent: json["landing_intent"],
    landingType: json["landing_type"],
    landingVehicle: json["landing_vehicle"],
  );

  Map<String, dynamic> toJson() => {
    "core_serial": coreSerial,
    "flight": flight,
    "block": block,
    "gridfins": gridfins,
    "legs": legs,
    "reused": reused,
    "land_success": landSuccess,
    "landing_intent": landingIntent,
    "landing_type": landingType,
    "landing_vehicle": landingVehicle,
  };
}

class SecondStage {
  int block;
  List<Payload> payloads;

  SecondStage({
    this.block,
    this.payloads,
  });

  factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
    block: json["block"],
    payloads: List<Payload>.from(json["payloads"].map((x) => Payload.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "block": block,
    "payloads": List<dynamic>.from(payloads.map((x) => x.toJson())),
  };
}

class Payload {
  String payloadId;
  List<dynamic> noradId;
  bool reused;
  List<String> customers;
  String nationality;
  String manufacturer;
  String payloadType;
  dynamic payloadMassKg;
  dynamic payloadMassLbs;
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

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    payloadId: json["payload_id"],
    noradId: List<dynamic>.from(json["norad_id"].map((x) => x)),
    reused: json["reused"],
    customers: List<String>.from(json["customers"].map((x) => x)),
    nationality: json["nationality"],
    manufacturer: json["manufacturer"],
    payloadType: json["payload_type"],
    payloadMassKg: json["payload_mass_kg"],
    payloadMassLbs: json["payload_mass_lbs"],
    orbit: json["orbit"],
    orbitParams: OrbitParams.fromJson(json["orbit_params"]),
    uid: json["uid"],
  );

  Map<String, dynamic> toJson() => {
    "payload_id": payloadId,
    "norad_id": List<dynamic>.from(noradId.map((x) => x)),
    "reused": reused,
    "customers": List<dynamic>.from(customers.map((x) => x)),
    "nationality": nationality,
    "manufacturer": manufacturer,
    "payload_type": payloadType,
    "payload_mass_kg": payloadMassKg,
    "payload_mass_lbs": payloadMassLbs,
    "orbit": orbit,
    "orbit_params": orbitParams.toJson(),
    "uid": uid,
  };
}

class OrbitParams {
  String referenceSystem;
  String regime;
  dynamic longitude;
  dynamic semiMajorAxisKm;
  dynamic eccentricity;
  dynamic periapsisKm;
  dynamic apoapsisKm;
  dynamic inclinationDeg;
  dynamic periodMin;
  dynamic lifespanYears;
  dynamic epoch;
  dynamic meanMotion;
  dynamic raan;
  dynamic argOfPericenter;
  dynamic meanAnomaly;

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

  factory OrbitParams.fromJson(Map<String, dynamic> json) => OrbitParams(
    referenceSystem: json["reference_system"],
    regime: json["regime"],
    longitude: json["longitude"],
    semiMajorAxisKm: json["semi_major_axis_km"],
    eccentricity: json["eccentricity"],
    periapsisKm: json["periapsis_km"],
    apoapsisKm: json["apoapsis_km"],
    inclinationDeg: json["inclination_deg"],
    periodMin: json["period_min"],
    lifespanYears: json["lifespan_years"],
    epoch: json["epoch"],
    meanMotion: json["mean_motion"],
    raan: json["raan"],
    argOfPericenter: json["arg_of_pericenter"],
    meanAnomaly: json["mean_anomaly"],
  );

  Map<String, dynamic> toJson() => {
    "reference_system": referenceSystem,
    "regime": regime,
    "longitude": longitude,
    "semi_major_axis_km": semiMajorAxisKm,
    "eccentricity": eccentricity,
    "periapsis_km": periapsisKm,
    "apoapsis_km": apoapsisKm,
    "inclination_deg": inclinationDeg,
    "period_min": periodMin,
    "lifespan_years": lifespanYears,
    "epoch": epoch,
    "mean_motion": meanMotion,
    "raan": raan,
    "arg_of_pericenter": argOfPericenter,
    "mean_anomaly": meanAnomaly,
  };
}

class Telemetry {
  dynamic flightClub;

  Telemetry({
    this.flightClub,
  });

  factory Telemetry.fromJson(Map<String, dynamic> json) => Telemetry(
    flightClub: json["flight_club"],
  );

  Map<String, dynamic> toJson() => {
    "flight_club": flightClub,
  };
}
