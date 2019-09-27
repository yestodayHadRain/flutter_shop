import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/details_info.dart';
import './details_page/detail_top_area.dart';
import './details_page/detail_explain.dart';
import './details_page/detail_tabbar.dart';
import './details_page/detail_web.dart';
import './details_page/detail_bottom.dart';

class DetailPage extends StatelessWidget {
  final String goodsId;
  DetailPage(this.goodsId);
  
  @override
  Widget build(BuildContext context) {
    // _getDetailsInfo(context);
    // return Container(
    //   child: Text('商品Id为: ${goodsId}'),
    // );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            print('返回上一页');
            Navigator.pop(context);
          },
        ),
        title: Text('商品详情页'),
      ),
      body: FutureBuilder(
        future: _getBackInfo(context),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return Stack(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    DetailTopArea(),
                    DetailsExplain(),
                    DetailTabBar(),
                    DetailWeb()
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: DetailBottom(),
                )
              ],
            );
          } else {
            return Text('loading .........');
          }
        },
      ),
    );
  
  }

  void _getDetailsInfo(BuildContext context) async{
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);
    print('加载完毕..........');
  }

  Future _getBackInfo(BuildContext context) async{
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);
    return 'load done';
  }
  
}