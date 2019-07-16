import 'package:flutter/material.dart';
import '../model/category.dart';


class ChildCategory with ChangeNotifier{

  List<BxMallSubDto> childCategoryList = [];
  int childIndex = 0;
  String categoryId = '4';
  String subId = '';

  getChildCategory(List<BxMallSubDto> list, String id){
    childIndex = 0;
    categoryId = id;
    BxMallSubDto all = BxMallSubDto();
    all.mallSubId = '';
    all.mallCategoryId = '00';
    all.comments = 'null';
    all.mallSubName = '全部';
    childCategoryList = [all];
    childCategoryList.addAll(list);
    notifyListeners();
  }

  changeChildIndex(String id,int index){
    childIndex = index;
    subId = id;
    notifyListeners();
  }

}
