class PrayerHub {
  int? code;
  String? status;
  Data? data;

  PrayerHub({this.code, this.status, this.data});

  PrayerHub.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

}

class Data {
  Timings? timings;
  Date? date;
  Meta? meta;

  Data({this.timings, this.date, this.meta});

  Data.fromJson(Map<String, dynamic> json) {
    timings =
    json['timings'] != null ? new Timings.fromJson(json['timings']) : null;
    date = json['date'] != null ? new Date.fromJson(json['date']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }


}



class Timings {
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;

  Timings(
      {this.fajr,
        this.sunrise,
        this.dhuhr,
        this.asr,
        this.sunset,
        this.maghrib,
        this.isha,
        this.imsak,
        this.midnight});

  Timings.fromJson(Map<String, dynamic> json) {
    fajr = json['Fajr'];
    sunrise = json['Sunrise'];
    dhuhr = json['Dhuhr'];
    asr = json['Asr'];
    sunset = json['Sunset'];
    maghrib = json['Maghrib'];
    isha = json['Isha'];
    imsak = json['Imsak'];
    midnight = json['Midnight'];
  }


}

class Date {
  String? readable;
  String? timestamp;
  Hijri? hijri;
  Gregorian? gregorian;

  Date({this.readable, this.timestamp, this.hijri, this.gregorian});

  Date.fromJson(Map<String, dynamic> json) {
    readable = json['readable'];
    timestamp = json['timestamp'];
    hijri = json['hijri'] != null ? new Hijri.fromJson(json['hijri']) : null;
    gregorian = json['gregorian'] != null
        ? new Gregorian.fromJson(json['gregorian'])
        : null;
  }


}

class Hijri {
  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;


  Hijri(
      {this.date,
        this.format,
        this.day,
        this.weekday,
        this.month,
        this.year,
        this.designation,
        });

  Hijri.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    format = json['format'];
    day = json['day'];
    weekday =
    json['weekday'] != null ? new Weekday.fromJson(json['weekday']) : null;
    month = json['month'] != null ? new Month.fromJson(json['month']) : null;
    year = json['year'];
    designation = json['designation'] != null
        ? new Designation.fromJson(json['designation'])
        : null;

  }


}

class Weekday {
  String? en;
  String? ar;

  Weekday({this.en, this.ar});

  Weekday.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    return data;
  }
}

class Month {
  int? number;
  String? en;
  String? arabic;

  Month({this.number, this.en, this.arabic});

  Month.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    en = json['en'];
    arabic = json['ar'];
  }


}

class Designation {
  String? abbreviated;
  String? expanded;

  Designation({this.abbreviated, this.expanded});

  Designation.fromJson(Map<String, dynamic> json) {
    abbreviated = json['abbreviated'];
    expanded = json['expanded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['abbreviated'] = this.abbreviated;
    data['expanded'] = this.expanded;
    return data;
  }
}

class Gregorian {
  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;

  Gregorian(
      {this.date,
        this.format,
        this.day,
        this.weekday,
        this.month,
        this.year,
        this.designation});

  Gregorian.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    format = json['format'];
    day = json['day'];
    weekday =
    json['weekday'] != null ? new Weekday.fromJson(json['weekday']) : null;
    month = json['month'] != null ? new Month.fromJson(json['month']) : null;
    year = json['year'];
    designation = json['designation'] != null
        ? new Designation.fromJson(json['designation'])
        : null;
  }


}





class Meta {
  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Offset? offset;

  Meta(
      {this.latitude,
        this.longitude,
        this.timezone,
        this.method,
        this.latitudeAdjustmentMethod,
        this.midnightMode,
        this.school,
        this.offset});

  Meta.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    timezone = json['timezone'];
    method =
    json['method'] != null ? new Method.fromJson(json['method']) : null;
    latitudeAdjustmentMethod = json['latitudeAdjustmentMethod'];
    midnightMode = json['midnightMode'];
    school = json['school'];
    offset =
    json['offset'] != null ? new Offset.fromJson(json['offset']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['timezone'] = this.timezone;
    if (this.method != null) {
      data['method'] = this.method!.toJson();
    }
    data['latitudeAdjustmentMethod'] = this.latitudeAdjustmentMethod;
    data['midnightMode'] = this.midnightMode;
    data['school'] = this.school;
    if (this.offset != null) {
      data['offset'] = this.offset!.toJson();
    }
    return data;
  }
}

class Method {
  int? id;
  String? name;
  Params? params;
  Location? location;

  Method({this.id, this.name, this.params, this.location});

  Method.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    params =
    json['params'] != null ? new Params.fromJson(json['params']) : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.params != null) {
      data['params'] = this.params!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    return data;
  }
}

class Params {
  double? fajr;
  double? isha;

  Params({this.fajr, this.isha});

  Params.fromJson(Map<String, dynamic> json) {
    fajr = json['Fajr'];
    isha = json['Isha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Fajr'] = this.fajr;
    data['Isha'] = this.isha;
    return data;
  }
}

class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class Offset {
  int? imsak;
  int? fajr;
  int? sunrise;
  int? dhuhr;
  int? asr;
  int? maghrib;
  int? sunset;
  int? isha;
  int? midnight;

  Offset(
      {this.imsak,
        this.fajr,
        this.sunrise,
        this.dhuhr,
        this.asr,
        this.maghrib,
        this.sunset,
        this.isha,
        this.midnight});

  Offset.fromJson(Map<String, dynamic> json) {
    imsak = json['Imsak'];
    fajr = json['Fajr'];
    sunrise = json['Sunrise'];
    dhuhr = json['Dhuhr'];
    asr = json['Asr'];
    maghrib = json['Maghrib'];
    sunset = json['Sunset'];
    isha = json['Isha'];
    midnight = json['Midnight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Imsak'] = this.imsak;
    data['Fajr'] = this.fajr;
    data['Sunrise'] = this.sunrise;
    data['Dhuhr'] = this.dhuhr;
    data['Asr'] = this.asr;
    data['Maghrib'] = this.maghrib;
    data['Sunset'] = this.sunset;
    data['Isha'] = this.isha;
    data['Midnight'] = this.midnight;
    return data;
  }

}

class PrayerUi
{
  String ?prayerTimes ;
  String ?prayerName;

  PrayerUi({this.prayerTimes, this.prayerName});
}
