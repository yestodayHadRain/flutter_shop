import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';


class MenberPage extends StatefulWidget {
  @override
  _MenberPageState createState() => _MenberPageState();
}

class _MenberPageState extends State<MenberPage> {
  List list = ['1123213213', '2asfsdafasdf', '3sdfgasdfasf'];
  String page = 'more';
  GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('会员中心'),),
      body: EasyRefresh(
        refreshFooter: ClassicsFooter(
          key: _footerKey,
          bgColor: Colors.white,
          textColor: Colors.pink,
          moreInfoColor: Colors.pink,
          showMore: true,
          noMoreText: '',
          moreInfo: '加载中',
          loadReadyText: '上拉加载更多......',
        ),
        child: ListView(
          children: <Widget>[
            _getList()
          ],
        ),
        loadMore: () async{
          print('开始加载更多');
            setState(() {
              list.add(page);
            });
        }
      ),
    );
  }

  Widget _getList(){
    return Wrap(
      spacing: 1,
      children: list.map((val){
        return Container(
          child: Center(
            child: Text(val),
          ),
        );
      }).toList(),
    );
  }
}

