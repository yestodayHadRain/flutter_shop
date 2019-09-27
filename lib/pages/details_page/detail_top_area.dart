import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../../provide/details_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailTopArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provide<DetailsInfoProvide>(
      builder: (context,child,val){
        var goodsInfo = Provide.value<DetailsInfoProvide>(context).goodsInfo.data.goodInfo;
        if(goodsInfo != null){
          return Container(
            color: Colors.white,
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: <Widget>[
                _goodsImage(goodsInfo.image1),
                _goodsName(goodsInfo.goodsName),
                _goodsNum(goodsInfo.goodsSerialNumber),
                _goodsPrice(goodsInfo.presentPrice, goodsInfo.oriPrice)
              ],
            ),
          );
        }
      
      },
    );
  }

  Widget _goodsImage(url){
    return Image.network(
      url,
      width: ScreenUtil().setWidth(740)
    );
  }

  Widget _goodsName(name){
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      child: Text(
        name,
        style: TextStyle(
          fontSize: ScreenUtil().setSp(30)
        )
      ),
    );
  }

  Widget _goodsNum(num){
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Text(
        '编号: ${num}',
        style: TextStyle(
          color: Colors.black26
        )
      ),
    );
  }

  Widget _goodsPrice(presentPrice, oriprice){
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(7.5),
            child: Text(
              '卖 ${presentPrice} 元',
              style: TextStyle(
                color:Colors.pinkAccent,
                fontSize:ScreenUtil().setSp(40)
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.5),
            child: Text(
              '市场价: ${oriprice} 元',
              style: TextStyle(
                color: Colors.black26,
                decoration: TextDecoration.lineThrough
              ),
            ),
          )
        ],
      ),
    );
  }

}