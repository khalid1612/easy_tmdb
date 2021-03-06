import 'package:tmdb_easy/Helper/utils.dart';

class TvCredits {
  int id;
  List<TvCreditsCast> cast;
  List<TvCreditsCrew> crew;

  TvCredits({this.id, this.cast, this.crew});

  TvCredits.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.cast = (json['cast'] as List) != null
        ? (json['cast'] as List).map((i) => TvCreditsCast.fromJson(i)).toList()
        : null;
    this.crew = (json['crew'] as List) != null
        ? (json['crew'] as List).map((i) => TvCreditsCrew.fromJson(i)).toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cast'] =
        this.cast != null ? this.cast.map((i) => i.toJson()).toList() : null;
    data['crew'] =
        this.crew != null ? this.crew.map((i) => i.toJson()).toList() : null;
    return data;
  }
}

class TvCreditsCast {
  String character;
  String creditId;
  String name;
  String profilePath;
  int castId;
  int gender;
  int id;
  int order;

  TvCreditsCast(
      {this.character,
      this.creditId,
      this.name,
      this.profilePath,
      this.castId,
      this.gender,
      this.id,
      this.order});

  TvCreditsCast.fromJson(Map<String, dynamic> json) {
    this.character = json['character'];
    this.creditId = json['credit_id'];
    this.name = json['name'];
    this.profilePath =
        Utils.userConditionalUrl(json['profile_path'], null, true);
    this.castId = json['cast_id'];
    this.gender = json['gender'];
    this.id = json['id'];
    this.order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['character'] = this.character;
    data['credit_id'] = this.creditId;
    data['name'] = this.name;
    data['profile_path'] = this.profilePath;
    data['cast_id'] = this.castId;
    data['gender'] = this.gender;
    data['id'] = this.id;
    data['order'] = this.order;
    return data;
  }
}

class TvCreditsCrew {
  String creditId;
  String department;
  String job;
  String name;
  String profilePath;
  int gender;
  int id;

  TvCreditsCrew(
      {this.creditId,
      this.department,
      this.job,
      this.name,
      this.profilePath,
      this.gender,
      this.id});

  TvCreditsCrew.fromJson(Map<String, dynamic> json) {
    this.creditId = json['credit_id'];
    this.department = json['department'];
    this.job = json['job'];
    this.name = json['name'];
    this.profilePath =
        Utils.userConditionalUrl(json['profile_path'], null, true);
    this.gender = json['gender'];
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['credit_id'] = this.creditId;
    data['department'] = this.department;
    data['job'] = this.job;
    data['name'] = this.name;
    data['profile_path'] = this.profilePath;
    data['gender'] = this.gender;
    data['id'] = this.id;
    return data;
  }
}
