import 'dart:convert';
import 'package:dynamic_ui_task/home/model/appBar_model.dart';
import 'package:dynamic_ui_task/home/model/category_model.dart';
import 'package:dynamic_ui_task/home/model/deals_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/carousel_model.dart';
import '../model/condition_model.dart';
import '../model/offers_model.dart';

class HomeController extends GetxController {
  Rx<AppBarModel> appBarModel = AppBarModel().obs;
  Rx<CarouselModel> carouselModel = CarouselModel().obs;
  Rx<CategoryModel> categoryModel = CategoryModel().obs;
  Rx<ConditionModel> conditionModel = ConditionModel().obs;
  Rx<DealsModel> dealsModel = DealsModel().obs;
  Rx<OffersModel> offersModel = OffersModel().obs;
  final CarouselController carouselController = CarouselController();
  RxInt currentIndex = 0.obs;
  @override
  void onInit() {
    loadAppBarConfig();
    loadCarouselConfig();
    loadCategoryConfig();
    loadConditionConfig();
    loadOffersConfig();
    loadDealsConfig();
    super.onInit();
  }

  Future<void> loadAppBarConfig() async {
    final String response =
        await rootBundle.loadString('assets/json/appbar_card_config.json');
    final Map<String, dynamic> data = json.decode(response);
    appBarModel.value = AppBarModel.fromJson(data);
    print(appBarModel.value.toJson());
  }

  Future<void> loadCarouselConfig() async {
    final String response =
        await rootBundle.loadString('assets/json/carousel_config.json');
    final Map<String, dynamic> data = json.decode(response);
    carouselModel.value = CarouselModel.fromJson(data);
    print(carouselModel.value.toJson());
  }

  Future<void> loadCategoryConfig() async {
    final String response =
        await rootBundle.loadString('assets/json/category_config.json');
    final Map<String, dynamic> data = json.decode(response);
    categoryModel.value = CategoryModel.fromJson(data);
    print(categoryModel.value.toJson());
  }

  Future<void> loadConditionConfig() async {
    final String response =
        await rootBundle.loadString('assets/json/condition_config.json');
    final Map<String, dynamic> data = json.decode(response);
    conditionModel.value = ConditionModel.fromJson(data);
    print(conditionModel.value.toJson());
  }

  Future<void> loadOffersConfig() async {
    final String response =
        await rootBundle.loadString('assets/json/offers_config.json');
    final Map<String, dynamic> data = json.decode(response);
    offersModel.value = OffersModel.fromJson(data);
    print(offersModel.value.toJson());
  }

  Future<void> loadDealsConfig() async {
    final String response =
        await rootBundle.loadString('assets/json/deals_config.json');
    final Map<String, dynamic> data = json.decode(response);
    dealsModel.value = DealsModel.fromJson(data);
    print(dealsModel.value.toJson());
  }
}
