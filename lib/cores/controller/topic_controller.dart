import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/cores/model/data_model.dart';

class TopicController extends GetxController {
  TextEditingController searchController = TextEditingController();

  RxString title = 'Select at least 3 categories to continue'.obs;
  RxList<DataModel> allDataTopic = dataTopic.obs;
  RxList<DataModel> filteredTopic = dataTopic.obs;
  RxList<DataModel> selectedDataTopic =
      List<DataModel>.empty(growable: true).obs;

  // Filter Data

  void searchData(String value) {
    if (value.isEmpty) {
      filteredTopic.value = allDataTopic;
    } else {
      filteredTopic.value = filteredTopic
          .where((topic) =>
              topic.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
  }

  // Set Topic Categories

  void setCategories(DataModel? dataModel) {
    print(dataModel!.id);
    if (dataModel.selected == true) {
      allDataTopic
          .where((p0) => p0.id == dataModel.id)
          .map((element) => element.selected = false)
          .toList();
      selectedDataTopic.remove(dataModel);
    } else {
      allDataTopic
          .where((p0) => p0.id == dataModel.id)
          .map((element) => element.selected = true)
          .toList();
      selectedDataTopic.add(dataModel);
    }

    if (selectedDataTopic.length.isEqual(0)) {
      title.value = 'Select at least 3 categories to continue';
    } else if (selectedDataTopic.length == 1) {
      title.value = 'Select 2 or more categories to continue';
    } else if (selectedDataTopic.length == 2) {
      title.value = 'Select 1 or more categories to continue';
    } else {
      title.value = 'Continue';
    }
  }
}
