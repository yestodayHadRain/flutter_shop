import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/details_info.dart';

class DetailPage extends StatelessWidget {
  final String goodsId;
  DetailPage(this.goodsId);
  
  @override
  Widget build(BuildContext context) {
    _getDetailsInfo(context);
    return Container(
      child: Text('商品Id为: ${goodsId}'),
    );
  }

  void _getDetailsInfo(BuildContext context) async{
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);
    print('加载完毕..........');
  }
}