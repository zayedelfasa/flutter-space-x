// To parse this JSON data, do
//
//     final upcommingLaunch = upcommingLaunchFromJson(jsonString);

import 'dart:convert';

class UpcommingLaunch {
  int flightNumber;
  String missionName;
  List<String> missionId;
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
  List<dynamic> crew;
  DateTime lastDateUpdate;
  DateTime lastLlLaunchDate;
  DateTime lastLlUpdate;
  DateTime lastWikiLaunchDate;
  String lastWikiRevision;
  DateTime lastWikiUpdate;
  String launchDateSource;

  UpcommingLaunch({
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

  factory UpcommingLaunch.fromRawJson(String str) => UpcommingLaunch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpcommingLaunch.fromJson(Map<String, dynamic> json) => UpcommingLaunch(
    flightNumber: json["flight_number"],
    missionName: json["mission_name"],
    missionId: List<String>.from(json["mission_id"].map((x) => x)),
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
    details: json["details"] == null ? null : json["details"],
    upcoming: json["upcoming"],
    staticFireDateUtc: json["static_fire_date_utc"],
    staticFireDateUnix: json["static_fire_date_unix"],
    timeline: json["timeline"],
    crew: json["crew"] == null ? null : List<dynamic>.from(json["crew"].map((x) => x)),
    lastDateUpdate: json["last_date_update"] == null ? null : DateTime.parse(json["last_date_update"]),
    lastLlLaunchDate: json["last_ll_launch_date"] == null ? null : DateTime.parse(json["last_ll_launch_date"]),
    lastLlUpdate: json["last_ll_update"] == null ? null : DateTime.parse(json["last_ll_update"]),
    lastWikiLaunchDate: json["last_wiki_launch_date"] == null ? null : DateTime.parse(json["last_wiki_launch_date"]),
    lastWikiRevision: json["last_wiki_revision"] == null ? null : json["last_wiki_revision"],
    lastWikiUpdate: json["last_wiki_update"] == null ? null : DateTime.parse(json["last_wiki_update"]),
    launchDateSource: json["launch_date_source"] == null ? null : json["launch_date_source"],
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
    "details": details == null ? null : details,
    "upcoming": upcoming,
    "static_fire_date_utc": staticFireDateUtc,
    "static_fire_date_unix": staticFireDateUnix,
    "timeline": timeline,
    "crew": crew == null ? null : List<dynamic>.from(crew.map((x) => x)),
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

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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
    videoLink: json["video_link"] == null ? null : json["video_link"],
    youtubeId: json["youtube_id"] == null ? null : json["youtube_id"],
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
    "video_link": videoLink == null ? null : videoLink,
    "youtube_id": youtubeId == null ? null : youtubeId,
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

  factory Rocket.fromRawJson(String str) => Rocket.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rocket.fromJson(Map<String, dynamic> json) => Rocket(
    rocketId: json["rocket_id"],
    rocketName: json["rocket_name"],
    rocketType: json["rocket_type"],
    firstStage: FirstStage.fromJson(json["first_stage"]),
    secondStage: SecondStage.fromJson(json["second_stage"]),
    fairings: json["fairings"] == null ? null : Fairings.fromJson(json["fairings"]),
  );

  Map<String, dynamic> toJson() => {
    "rocket_id": rocketId,
    "rocket_name": rocketName,
    "rocket_type": rocketType,
    "first_stage": firstStage.toJson(),
    "second_stage": secondStage.toJson(),
    "fairings": fairings == null ? null : fairings.toJson(),
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

  factory Fairings.fromRawJson(String str) => Fairings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Fairings.fromJson(Map<String, dynamic> json) => Fairings(
    reused: json["reused"],
    recoveryAttempt: json["recovery_attempt"] == null ? null : json["recovery_attempt"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    ship: json["ship"],
  );

  Map<String, dynamic> toJson() => {
    "reused": reused,
    "recovery_attempt": recoveryAttempt == null ? null : recoveryAttempt,
    "recovered": recovered == null ? null : recovered,
    "ship": ship,
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
    cores: List<Core>.from(json["cores"].map((x) => Core.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "cores": List<dynamic>.from(cores.map((x) => x.toJson())),
  };
}

class Core {
  String coreSerial;
  int flight;
  int block;
  bool gridfins;
  bool legs;
  bool reused;
  dynamic landSuccess;
  bool landingIntent;
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

  factory Core.fromRawJson(String str) => Core.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Core.fromJson(Map<String, dynamic> json) => Core(
    coreSerial: json["core_serial"] == null ? null : json["core_serial"],
    flight: json["flight"] == null ? null : json["flight"],
    block: json["block"] == null ? null : json["block"],
    gridfins: json["gridfins"] == null ? null : json["gridfins"],
    legs: json["legs"] == null ? null : json["legs"],
    reused: json["reused"] == null ? null : json["reused"],
    landSuccess: json["land_success"],
    landingIntent: json["landing_intent"] == null ? null : json["landing_intent"],
    landingType: json["landing_type"],
    landingVehicle: json["landing_vehicle"],
  );

  Map<String, dynamic> toJson() => {
    "core_serial": coreSerial == null ? null : coreSerial,
    "flight": flight == null ? null : flight,
    "block": block == null ? null : block,
    "gridfins": gridfins == null ? null : gridfins,
    "legs": legs == null ? null : legs,
    "reused": reused == null ? null : reused,
    "land_success": landSuccess,
    "landing_intent": landingIntent == null ? null : landingIntent,
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

  factory SecondStage.fromRawJson(String str) => SecondStage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
    block: json["block"] == null ? null : json["block"],
    payloads: List<Payload>.from(json["payloads"].map((x) => Payload.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "block": block == null ? null : block,
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
  int payloadMassKg;
  double payloadMassLbs;
  String orbit;
  OrbitParams orbitParams;
  String uid;
  dynamic capSerial;
  dynamic massReturnedKg;
  dynamic massReturnedLbs;
  dynamic flightTimeSec;
  dynamic cargoManifest;

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
    this.capSerial,
    this.massReturnedKg,
    this.massReturnedLbs,
    this.flightTimeSec,
    this.cargoManifest,
  });

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    payloadId: json["payload_id"],
    noradId: List<dynamic>.from(json["norad_id"].map((x) => x)),
    reused: json["reused"],
    customers: List<String>.from(json["customers"].map((x) => x)),
    nationality: json["nationality"] == null ? null : json["nationality"],
    manufacturer: json["manufacturer"] == null ? null : json["manufacturer"],
    payloadType: json["payload_type"],
    payloadMassKg: json["payload_mass_kg"] == null ? null : json["payload_mass_kg"],
    payloadMassLbs: json["payload_mass_lbs"] == null ? null : json["payload_mass_lbs"].toDouble(),
    orbit: json["orbit"],
    orbitParams: OrbitParams.fromJson(json["orbit_params"]),
    uid: json["uid"],
    capSerial: json["cap_serial"],
    massReturnedKg: json["mass_returned_kg"],
    massReturnedLbs: json["mass_returned_lbs"],
    flightTimeSec: json["flight_time_sec"],
    cargoManifest: json["cargo_manifest"],
  );

  Map<String, dynamic> toJson() => {
    "payload_id": payloadId,
    "norad_id": List<dynamic>.from(noradId.map((x) => x)),
    "reused": reused,
    "customers": List<dynamic>.from(customers.map((x) => x)),
    "nationality": nationality == null ? null : nationality,
    "manufacturer": manufacturer == null ? null : manufacturer,
    "payload_type": payloadType,
    "payload_mass_kg": payloadMassKg == null ? null : payloadMassKg,
    "payload_mass_lbs": payloadMassLbs == null ? null : payloadMassLbs,
    "orbit": orbit,
    "orbit_params": orbitParams.toJson(),
    "uid": uid,
    "cap_serial": capSerial,
    "mass_returned_kg": massReturnedKg,
    "mass_returned_lbs": massReturnedLbs,
    "flight_time_sec": flightTimeSec,
    "cargo_manifest": cargoManifest,
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
  int lifespanYears;
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

  factory OrbitParams.fromRawJson(String str) => OrbitParams.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrbitParams.fromJson(Map<String, dynamic> json) => OrbitParams(
    referenceSystem: json["reference_system"] == null ? null : json["reference_system"],
    regime: json["regime"] == null ? null : json["regime"],
    longitude: json["longitude"],
    semiMajorAxisKm: json["semi_major_axis_km"],
    eccentricity: json["eccentricity"],
    periapsisKm: json["periapsis_km"],
    apoapsisKm: json["apoapsis_km"],
    inclinationDeg: json["inclination_deg"],
    periodMin: json["period_min"],
    lifespanYears: json["lifespan_years"] == null ? null : json["lifespan_years"],
    epoch: json["epoch"],
    meanMotion: json["mean_motion"],
    raan: json["raan"],
    argOfPericenter: json["arg_of_pericenter"],
    meanAnomaly: json["mean_anomaly"],
  );

  Map<String, dynamic> toJson() => {
    "reference_system": referenceSystem == null ? null : referenceSystem,
    "regime": regime == null ? null : regime,
    "longitude": longitude,
    "semi_major_axis_km": semiMajorAxisKm,
    "eccentricity": eccentricity,
    "periapsis_km": periapsisKm,
    "apoapsis_km": apoapsisKm,
    "inclination_deg": inclinationDeg,
    "period_min": periodMin,
    "lifespan_years": lifespanYears == null ? null : lifespanYears,
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

  factory Telemetry.fromRawJson(String str) => Telemetry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Telemetry.fromJson(Map<String, dynamic> json) => Telemetry(
    flightClub: json["flight_club"],
  );

  Map<String, dynamic> toJson() => {
    "flight_club": flightClub,
  };
}
