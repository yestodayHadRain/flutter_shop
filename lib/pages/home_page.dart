import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/config/service_url.dart';
import 'package:flutter_shop/config/service_url.dart';
import '../service/service_method.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';



class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {

  int page = 1;
  List<Map> hotGoodsList = [];
  GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hotGoodsList.addAll(hotGoodList);
    print('首页加载了.............');
  }

  @override
  Widget build(BuildContext context) {
    
    

    return Scaffold(
      appBar: AppBar(
        title: Text('百姓生活+'),
      ),
      // body:FutureBuilder(
      //   future: getHomePageContent(),
      //   builder: (context, snapshot){
      //     if(snapshot.hasData){
      //       var data = json.decode(snapshot.data.toString());
      //       List swiperDataList = data;
      //       return Column(
      //         children: <Widget>[
      //           SwiperDiy(swiperDataList: swiperDataList,)
      //         ],
      //       );
      //     } else {
      //       return Center(
      //         child: Text('加载中'),
      //       );
      //     }
      //   },
      // )
      body: Container(
        height: ScreenUtil().setHeight(1300),
        width: ScreenUtil().setWidth(750),
        child: EasyRefresh(
          refreshFooter: ClassicsFooter(
            key: _footerKey,
            bgColor: Colors.white,
            textColor: Colors.pink,
            moreInfoColor: Colors.pink,
            showMore: true,
            noMoreText: '',
            moreInfo: '加载中',
            loadReadyText: '上拉加载...',
          ),
          child: ListView(
            children: <Widget>[
              SwiperDiy(swiperDataList: dataList,),
              TopNavigator(navigatorList: categoryData,),
              AdBanner(imageUrl: adBaner,),
              LeaderPhone(leaderImage: leaderPhoneData['leaderImage'],leaderPhone: leaderPhoneData['leaderPhone'],),
              Recommend(recommendList: itemData,),
              FloorTitle(pictrue_url: floorItemTitle,),
              FloorContext(goodsList: floorItemData,),
              _hotGoods(),
            ],
          ),
          loadMore: ()async{
            print('开始加载更多');
            // _getHotGoods();
          },
        ),
      ),
    );
  }

  void _getHotGoods(){
    setState(() {
      hotGoodsList.addAll(hotGoodList);
      print('长度: ${hotGoodsList.length}');
      page++; 
    });
  }

  Widget hotTitle = Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.all(5.0),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(width: 0.5, color: Colors.black12)
      )
    ),
    child: Text('火爆专区'),
  );

  Widget _wrapList(){
    if(hotGoodsList.length != 0){
      print('列表不为空');
      List<Widget> listWidget = hotGoodsList.map((val){
        return InkWell(
          onTap: (){print('点击了火爆商品');},
          child: Container(
            width: ScreenUtil().setWidth(372),
            color: Colors.white,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(bottom: 3.0),
            child: Column(
              children: <Widget>[
                Image.network(val['image'], width: ScreenUtil().setWidth(375),),
                Text(
                  val['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.pink, fontSize: ScreenUtil().setSp(26)),
                ),
                Row(
                  children: <Widget>[
                    Text('卖 ${val['mallPrice']}'),
                    Text(
                      '卖 ${val['price']}',
                      style: TextStyle(color: Colors.black26, decoration: TextDecoration.lineThrough)
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList();

      return Wrap(
        spacing: 2,
        children: listWidget,
      );
    } else{
      print('列表为空');
      return Text('');
    }
  }

  Widget _hotGoods(){
    return Container(
      child: Column(
        children: <Widget>[
          hotTitle,
          _wrapList(),
        ],
      ),
    );
  }
}



class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  SwiperDiy({Key key, this.swiperDataList}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(250),
      child: Swiper(
        itemBuilder: (BuildContext context, int index){
          return Image.network("${swiperDataList[index]}", fit:BoxFit.fill);
        },
        itemCount: swiperDataList.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

class TopNavigator extends StatelessWidget {
  final List navigatorList;
  TopNavigator({Key key, this.navigatorList}): super(key: key);
  
  Widget _gridViewItemUI(BuildContext context, item){
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Image.network(item['image'], width:ScreenUtil().setWidth(95)),
          Text(item['mallCategoryName'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(285),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        padding: EdgeInsets.all(5.5),
        children: navigatorList.map((item){
          return _gridViewItemUI(context, item);
        }).toList()
      ),
    );
  }
}


class AdBanner extends StatelessWidget {
  final String imageUrl;
  AdBanner({Key key, this.imageUrl}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(this.imageUrl),
    );
  }
}

class LeaderPhone extends StatelessWidget {
  final String leaderImage;
  final String leaderPhone;

  LeaderPhone({Key key, this.leaderImage, this.leaderPhone}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: _launchUrl,
        child: Image.network(this.leaderImage),
      ),
    );
  }

  void _launchUrl() async{
    String url = 'tel:'+this.leaderPhone;
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw Exception('暂时不能拨打电话');
    }
  }
}


class Recommend extends StatelessWidget {
  final List recommendList;

  Recommend({Key key, this.recommendList}): super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(380),
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _recommedList()
        ],
      ),
    );
  }

  Widget _titleWidget(){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 2.0, 0, 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.black12)
        )
      ),
      child: Text(
        '商品推荐',
        style: TextStyle(color: Colors.pink)
      ),
    );
  }

  Widget _recommedList(){
    return Container(
      height: ScreenUtil().setHeight(330),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendList.length,
        itemBuilder: (context, index){
          return _item(index);
        },
      ),
    );
  }

  Widget _item(index){
    return InkWell(
      onTap: (){},
      child: Container(
        height: ScreenUtil().setHeight(330),
        width: ScreenUtil().setWidth(250),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(width: 0.5, color: Colors.black12)
          )
        ),
        child: Column(
          children: <Widget>[
            Image.network(recommendList[index]['image'], fit: BoxFit.fill, height: ScreenUtil().setHeight(191.9)),
            Text('卖 ${recommendList[index]['mallPrice']}'),
            Text(
              '卖 ${recommendList[index]['price']}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
}


class FloorTitle extends StatelessWidget {
  final String pictrue_url;

  FloorTitle({Key key, this.pictrue_url}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Image.network(this.pictrue_url),
    );
  }
}

class FloorContext extends StatelessWidget {
  final List goodsList;
  
  FloorContext({Key key, this.goodsList}):super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _firstRow(),
          _secondRow()
        ],
      ),
    );
  }

  Widget _firstRow(){
    return Row(
      children: <Widget>[
        _items(goodsList[0]),
        Column(
          children: <Widget>[
            _items(goodsList[1]),
            _items(goodsList[2])
          ],
        )
      ],
    );
  }
 
  Widget _secondRow(){
    return Row(
      children: <Widget>[
        _items(goodsList[3]),
        _items(goodsList[4])
      ],
    );
  }

  Widget _items(Map good){
    return Container(
      width: ScreenUtil().setWidth(375),
      child: InkWell(
        onTap: (){},
        child: Image.network(good['image']),
      ),
    );
  }
}