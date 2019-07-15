import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:url_launcher/url_launcher.dart';


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
      // body: EasyRefresh(
      //   refreshFooter: ClassicsFooter(
      //     key: _footerKey,
      //     bgColor: Colors.white,
      //     textColor: Colors.pink,
      //     moreInfoColor: Colors.pink,
      //     showMore: true,
      //     noMoreText: '',
      //     moreInfo: '加载中',
      //     loadReadyText: '上拉加载更多......',
      //   ),
      //   child: ListView(
      //     children: <Widget>[
      //       _getList()
      //     ],
      //   ),
      //   loadMore: () async{
      //     print('开始加载更多');
      //       setState(() {
      //         list.add(page);
      //       });
      //   }
      // ),
      body: LeaderPhone(leaderImage: 'https://upload.jianshu.io/users/upload_avatars/16912831/7f300fad-2424-4916-9a38-4f0804437720?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96',
                        leaderPhone: '123321',),
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
    // if(await canLaunch(url)){
    //   await launch(url);
    // } else {
    //   throw Exception('暂时不能拨打电话');
    // }
      print('url : ${url}');
      await launch(url);
  }
}

