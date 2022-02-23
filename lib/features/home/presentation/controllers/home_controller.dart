import 'package:get/get.dart';
import 'package:jds_flutter/features/home/domain/adapters/home_repository_adapter.dart';
import 'package:jds_flutter/features/home/domain/entities/constances.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});

  final IHomeRepository homeRepository;

  final _loading = false.obs;

  bool get loading => _loading.value;

  final Rx<Constances> _constancesModel = Constances().obs;
  final RxList<Constances> _constancesList =
      List<Constances>.empty(growable: true).obs;

  List<Constances> get constances => _constancesList;

  Constances get constance => _constancesModel.value;

  void getConstancesList() async {
    _loading.value = true;

    await homeRepository.getConstancesList().then((value) => {
          _constancesList.assignAll(value),
          _loading.value = false,
        });
  }

  void getConstance() async {
    _loading.value = true;

    await homeRepository.getConstances(44).then((value) => {
          _constancesModel.value = value,
          _loading.value = false,
        });
  }
}
