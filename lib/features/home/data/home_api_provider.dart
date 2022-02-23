import 'package:jds_flutter/network/api_interface.dart';
import 'package:jds_flutter/network/http_manager.dart';

abstract class IHomeProvider {
  Future<dynamic> getHomiliesList();

  Future<dynamic> getHomilies(id);

  Future<dynamic> getTvShowList();

  Future<dynamic> getTvShow(id);

  Future<dynamic> getMassesList();

  Future<dynamic> getMasses(id);

  Future<dynamic> getWordsList();

  Future<dynamic> getWords(id);

  Future<dynamic> getConstancesList();

  Future<dynamic> getConstances(id);

  Future<dynamic> getSongsList();

  Future<dynamic> getSong(id);

  Future<dynamic> getTutorials();
}

class HomeProvider implements IHomeProvider {
  HomeProvider({required this.httpManager});

  final IHttpManager httpManager;

  @override
  Future getConstancesList() async {
    return await httpManager.get(
      url: Api.constances,
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getConstances(id) async {
    return await httpManager.get(
      url: "${Api.constances}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getHomilies(id) async {
    return await httpManager.get(
      url: "${Api.homilies}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getHomiliesList() async {
    return await httpManager.get(
      url: Api.homilies,
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getMasses(id) async {
    return await httpManager.get(
      url: "${Api.masses}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getMassesList() async {
    return await httpManager.get(
      url: Api.masses,
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getSong(id) async {
    return await httpManager.get(
      url: "${Api.songs}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getSongsList() async {
    return await httpManager.get(
      url: Api.songs,
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getTutorials() async {
    return await httpManager.get(
      url: Api.tutorial,
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getTvShow(id) async {
    return await httpManager.get(
      url: "${Api.tvshows}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getTvShowList() async {
    return await httpManager.get(
      url: Api.tvshows,
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getWords(id) async {
    return await httpManager.get(
      url: "${Api.words}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future getWordsList() async {
    return await httpManager.get(
      url: Api.words,
      headers: Api.header,
      query: {},
    );
  }
}
