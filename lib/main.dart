import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import './provide/counter.dart';
import 'pages/index_page.dart';
import './provide/child_category.dart';
import './provide/category_goods_list.dart';

void main() {
  var counter = Counter();
  var providers = Providers();
  var childCategory = ChildCategory();
  var categoryGoodsListProvide = CategoryGoodsListProvide();
  providers
    ..provide(Provider<Counter>.value(counter))
    ..provide(Provider<CategoryGoodsListProvide>.value(categoryGoodsListProvide))
    ..provide(Provider<ChildCategory>.value(childCategory));

  runApp(ProviderNode(child: MyApp(), providers: providers,));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: IndexPage(),
      ),
    );
  }
}

