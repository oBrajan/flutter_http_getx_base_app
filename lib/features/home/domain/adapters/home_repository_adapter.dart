import 'package:get/get.dart';
import 'package:jds_flutter/features/home/domain/entities/constances.dart';
import 'package:jds_flutter/features/home/domain/entities/homilies.dart';
import 'package:jds_flutter/features/home/domain/entities/masses.dart';
import 'package:jds_flutter/features/home/domain/entities/songs.dart';
import 'package:jds_flutter/features/home/domain/entities/tvshow.dart';
import 'package:jds_flutter/features/home/domain/entities/words.dart';

abstract class IHomeRepository {
  Future<RxList<Homilies>> getHomiliesList();

  Future<Homilies> getHomilies(id);

  Future<RxList<TvShow>> getTvShowList();

  Future<TvShow> getTvShow(id);

  Future<RxList<Masses>> getMassesList();

  Future<Masses> getMasses(id);

  Future<RxList<Words>> getWordsList();

  Future<Words> getWords(id);

  Future<RxList<Constances>> getConstancesList();

  Future<Constances> getConstances(id);

  Future<RxList<Songs>> getSongsList();

  Future<Songs> getSong(id);

  Future<RxList<String>> getTutorials();
}
