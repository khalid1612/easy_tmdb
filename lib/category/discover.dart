import 'package:easytmdb/export/export_all.dart';

class Discover {
  Future<DiscoverMovie> movie(Map<String, dynamic> data) async {
    var response = await Utils.fetchData(UrlMaker.discoverMovie(data));

    return DiscoverMovie.fromJson(json.decode(response.body));
  }

  Future<DiscoverTv> tv(Map<String, dynamic> data) async {
    var response = await Utils.fetchData(UrlMaker.discoverTv(data));

    return DiscoverTv.fromJson(json.decode(response.body));
  }
}