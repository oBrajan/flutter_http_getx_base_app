import 'package:get/get.dart';
import 'package:jds_flutter/features/home/data/home_api_provider.dart';
import 'package:jds_flutter/features/home/domain/adapters/home_repository_adapter.dart';
import 'package:jds_flutter/features/home/domain/entities/constances.dart';
import 'package:jds_flutter/features/home/domain/entities/homilies.dart';
import 'package:jds_flutter/features/home/domain/entities/masses.dart';
import 'package:jds_flutter/features/home/domain/entities/songs.dart';
import 'package:jds_flutter/features/home/domain/entities/tvshow.dart';
import 'package:jds_flutter/features/home/domain/entities/words.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});

  final IHomeProvider provider;

  @override
  Future<Constances> getConstances(id) async {
    try {
      return Constances.fromJson(await provider.getConstances(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<Constances>> getConstancesList() async {
    try {
      RxList<Constances> constances = RxList<Constances>();
      await provider.getConstancesList().then((response) => {
            for (var element in response)
              {constances.add(Constances.fromJson(element))}
          });

      return constances;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Homilies> getHomilies(id) async {
    try {
      return Homilies.fromJson(await provider.getHomilies(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<Homilies>> getHomiliesList() async {
    try {
      RxList<Homilies> homilies = RxList<Homilies>();
      await provider.getHomiliesList().then((response) => {
            for (var element in response)
              {homilies.add(Homilies.fromJson(element))}
          });

      return homilies;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Masses> getMasses(id) async {
    try {
      return Masses.fromJson(await provider.getMasses(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<Masses>> getMassesList() async {
    try {
      RxList<Masses> masses = RxList<Masses>();
      await provider.getMassesList().then((response) => {
            for (var element in response) {masses.add(Masses.fromJson(element))}
          });

      return masses;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Songs> getSong(id) async {
    try {
      return Songs.fromJson(await provider.getSong(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<Songs>> getSongsList() async {
    try {
      RxList<Songs> songs = RxList<Songs>();
      await provider.getSongsList().then((response) => {
            for (var element in response) {songs.add(Songs.fromJson(element))}
          });

      return songs;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<String>> getTutorials() async {
    try {
      RxList<String> tutorials = RxList<String>();
      await provider.getTutorials().then((response) => {
            for (var element in response) {tutorials.add(element)}
          });

      return tutorials;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TvShow> getTvShow(id) async {
    try {
      return TvShow.fromJson(await provider.getTvShow(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<TvShow>> getTvShowList() async {
    try {
      RxList<TvShow> tvShow = RxList<TvShow>();
      await provider.getTvShowList().then((response) => {
            for (var element in response) {tvShow.add(TvShow.fromJson(element))}
          });

      return tvShow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Words> getWords(id) async {
    try {
      return Words.fromJson(await provider.getWords(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RxList<Words>> getWordsList() async {
    try {
      RxList<Words> tvShow = RxList<Words>();
      await provider.getWordsList().then((response) => {
            for (var element in response) {tvShow.add(Words.fromJson(element))}
          });

      return tvShow;
    } catch (e) {
      rethrow;
    }
  }
}
