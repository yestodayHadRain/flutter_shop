const serviceUrl = 'https://wxmini.baixingliangfan.cn/baixing/';
const servicePath={
  'homePageContext': serviceUrl+'wxmini/homePageContent', // 商家首页信息
  'homePageBelowConten': serviceUrl+'wxmini/homePageBelowConten', //商城首页热卖商品拉取
  'getCategory': serviceUrl+'wxmini/getCategory', //商品类别信息
  'getMallGoods': serviceUrl+'wxmini/getMallGoods', //商品分类的商品列表
  'getGoodDetailById':serviceUrl+'wxmini/getGoodDetailById', //商品详细信息列表
};
// const servicePath = {
//   'homePageContext': serviceUrl+'wxmini/homePageContent',
//   // 'homePageContext': 'https://camorope-client-a.meiqia.com/pusher/info?browser_id=704f512fe4121090493c564317472e26&ent_id=7772&track_id=1KGMWhU0wrqqaghT7DHxZ0PAyb4&visit_id=1NUt4PP88zhDCGhKkFq4ELT7Z8f&t=1562147249460',
//   'headers': {
//     'Host': 'camorope-client-a.meiqia.com',
//     'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0',
//     'Accept': '*/*',
//     'Accept-Language': 'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2',
//     'Accept-Encoding': 'gzip, deflate, br',
//     'Referer': 'https://new-api.meiqia.com/dist/desktop-fiesta.html?cpkjy7nte7v',
//     'Origin': 'https://new-api.meiqia.com',
//     'Connection': 'keep-alive'
//   }
// };
const dataList = [
      'https://pic3.zhimg.com/80/v2-e34f9372a05a00a6f5778f6357ec2b0d_hd.jpg',
      'https://pic4.zhimg.com/80/v2-8edde88d4f64057c7e99847164445555_hd.jpg',
      'https://pic2.zhimg.com/80/v2-0687ae60cc782edf3d4d1d3ea53df40c_hd.jpg',
      'https://pic4.zhimg.com/80/v2-cb0e4f8cfc2ba10cdb1ae881b005d1c7_hd.jpg'
];
const categoryData = [
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562828486&di=615c6f5c1ff7582f8fb0f339bc5df28b&imgtype=jpg&er=1&src=http%3A%2F%2Fku.90sjimg.com%2Felement_origin_min_pic%2F01%2F48%2F13%2F495744153d32276.jpg', 'mallCategoryName': '分类一'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707504&di=abd4ff2350f06b9a77ac7657cf554203&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fc50e15ebec7ffa2c4e682fda8cacde91a9e460711f639-lCZ9qD_fw658', 'mallCategoryName': '分类二'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707504&di=ddc1234ee30a1363dc1d5000f73c8cf6&imgtype=0&src=http%3A%2F%2Fimg.aso.aizhan.com%2Ficon%2F6d%2Fa5%2Fa3%2F6da5a379ad9985198bc1044b50c2fb88.jpg', 'mallCategoryName': '分类三'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707498&di=4f521ebae8248b9250ed5af38a4bb8a4&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Felement_origin_min_pic%2F00%2F86%2F90%2F1256ec58e17de6d.jpg', 'mallCategoryName': '分类四'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562234208720&di=8fcd77f8c7e8da918f29a7f56dd0bfc6&imgtype=0&src=http%3A%2F%2Fpic.51yuansu.com%2Fpic3%2Fcover%2F02%2F17%2F86%2F59af01bf260ee_610.jpg', 'mallCategoryName': '分类五'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707500&di=3e24d52e2232527fdc94f53096c2fbca&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F01%2F54%2F00%2F005746f948b7544.jpg', 'mallCategoryName': '分类六'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707499&di=993523dfd2f8822356f164fdf5f1c0f1&imgtype=0&src=http%3A%2F%2Fimgb.mumayi.com%2Fandroid%2Fimg_mumayi%2F2014%2F10%2F30%2F4%2F40462%2Ficon%2F40462_b6283.png', 'mallCategoryName': '分类七'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707498&di=d16a5093e59dfe2ebf52d01d3f8afc38&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F01%2F54%2F35%2F07574711709e8fc.jpg', 'mallCategoryName': '分类八'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562233707498&di=4f521ebae8248b9250ed5af38a4bb8a4&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Felement_origin_min_pic%2F00%2F86%2F90%2F1256ec58e17de6d.jpg', 'mallCategoryName': '分类九'},
  {'image':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562234208720&di=d7d07092a8c516e1edd591f10ac9d635&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01873058739caca8012060c8c8a074.jpg%401280w_1l_2o_100sh.png', 'mallCategoryName': '分类十'}
];
const adBaner = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562236665461&di=12e9383618dceb0739bb6eb5edc5d682&imgtype=0&src=http%3A%2F%2Fwww.zlcool.com%2Fd%2Ffile%2F2011%2F12%2F26%2Fee34657aed5e76d7202c083fdfd012c9.gif';

const leaderPhoneData = {
  'leaderImage': 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562238944605&di=77c30766b798adee60704633ba4366a5&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F51%2F55%2F16pic_5155279_b.jpg',
  'leaderPhone': '13167368787'
};

const itemData = [
  {
    'image':'https://pic3.zhimg.com/80/v2-e34f9372a05a00a6f5778f6357ec2b0d_hd.jpg',
    'mallPrice':'123',
    'price':'32'
  },
  {
    'image':'https://img13.360buyimg.com/mobilecms/s140x140_jfs/t1/57030/11/3861/119506/5d19cfd0E7a96759c/e5f7dd213f27b50f.jpg!q90.webp',
    'mallPrice':'12',
    'price':'32'
  },
  {
    'image':'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t1/41645/29/7440/149508/5d0f38b1E3eca1048/a6d21782e2cbdd28.png!q90.webp',
    'mallPrice':'12',
    'price':'32'
  },
  {
    'image':'https://img10.360buyimg.com/babel/s350x370_jfs/t1/39294/13/7115/66489/5ce364d2E0eae12fc/ef2238659b639bb7.jpg!q90!cc_350x370',
    'mallPrice':'12',
    'price':'32'
  },
  {
    'image':'https://img10.360buyimg.com/da/s340x200_jfs/t1/22155/34/2308/138189/5c1b015eE0d76e2a2/b12cb981f76c59fd.jpg!q90!cc_340x200',
    'mallPrice':'345',
    'price':'34'
  },
  {
    'image':'https://img10.360buyimg.com/babel/s350x180_jfs/t22660/197/997998956/85092/652504db/5b4c45bfNcfd19212.jpg!q90!cc_350x180',
    'mallPrice':'44',
    'price':'55'
  },
  {
    'image':'https://img30.360buyimg.com/babel/s130x130_jfs/t20905/312/2446614392/76097/d3692e60/5b56f4faN4c7a369a.jpg!q90!cc_130x130',
    'mallPrice':'1',
    'price':'434'
  },
  {
    'image':'https://img11.360buyimg.com/babel/s350x180_jfs/t1/33771/7/15285/118605/5d1ab90cE8698f526/2819a7bb7817925f.jpg!q90!cc_350x180',
    'mallPrice':'34',
    'price':'78'
  },
  {
    'image':'https://img11.360buyimg.com/babel/s150x150_jfs/t29041/213/1352719181/31056/33e0cb65/5cde5411N28b313c2.jpg!q90!cc_150x150',
    'mallPrice':'97',
    'price':'78'
  },
  {
    'image':'https://img11.360buyimg.com/babel/s150x150_jfs/t1/36614/22/4383/332356/5cc43696E9bc494a6/21419a805c7261d3.jpg!q90!cc_150x150',
    'mallPrice':'345',
    'price':'345'
  },
];

const floorItemTitle = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562897153&di=f15ab958afee8fef824286f6c8b0aebd&imgtype=jpg&er=1&src=http%3A%2F%2Fpic4.nipic.com%2F20090809%2F1134191_180635042_2.jpg';
const floorItemData = [
  {'image': 'https://img13.360buyimg.com/mobilecms/s140x140_jfs/t1/75941/9/3593/184406/5d1c60bbE83788f8b/feabc2818384e969.jpg!q90.webp'},
  {'image': 'https://img10.360buyimg.com/mobilecms/s140x140_jfs/t1/56764/22/397/55868/5cd53479E1983366b/d4848db822e3391b.jpg!q90.webp'},
  {'image': 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t18265/24/1093493084/105701/7c4d82c6/5abb0bf7Nd82233e6.jpg!q90.webp'},
  {'image': 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t1/81912/25/2215/389242/5d0882fdEd1b6872c/01bea4a1896befa6.jpg!q90.webp'},
  {'image': 'https://img12.360buyimg.com/babel/s190x150_jfs/t1/76566/35/3148/84408/5d15b31cEd8ed01ac/1bce5d496befc809.jpg!q90!cc_190x150'}
];

const hotGoodList = [
  {'image':'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t1/48127/2/1600/157200/5cf5db4fE4b7cc98b/f324105569579493.jpg!q90.webp', 'mallPrice':'12', 'price':'321', 'name':'商品'},
  {'image':'https://img20.360buyimg.com/mobilecms/s140x140_jfs/t1/39687/28/10673/150504/5d1c8adbE58228e65/7d92125b95d64c3e.png!q90.webp', 'mallPrice':'12', 'price':'32', 'name':'商品'},
  {'image':'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t1/42655/11/8128/149947/5d1970dcEd7e36c95/56434bb4ce160eef.jpg!q90.webp', 'mallPrice':'345', 'price':'34', 'name':'商品'},
  {'image':'https://img13.360buyimg.com/mobilecms/s140x140_jfs/t1/69067/16/3988/175528/5d22a6ceE6a4f2f62/45e5cc7b652c4539.jpg!q90.webp', 'mallPrice':'38', 'price':'93', 'name':'商品'},
  {'image':'https://img12.360buyimg.com/mobilecms/s140x140_jfs/t1/44373/36/8353/126671/5d1f0654E0fbf907d/a577e61b1600e5c4.jpg!q90.webp', 'mallPrice':'14', 'price':'36', 'name':'商品'},
  {'image':'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t1/33589/40/15359/108135/5d1f1d3dE34f22b5c/3bc160a5b3fba593.jpg!q90.webp', 'mallPrice':'12', 'price':'65', 'name':'商品'}
];

const cateList = [
  {
		"mallCategoryId": "4",
		"mallCategoryName": "白酒",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c94621970a801626a35cb4d0175",
			"mallCategoryId": "4",
			"mallSubName": "名酒",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94621970a801626a363e5a0176",
			"mallCategoryId": "4",
			"mallSubName": "宝丰",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94621970a801626a3770620177",
			"mallCategoryId": "4",
			"mallSubName": "北京二锅头",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cc035c15a8",
			"mallCategoryId": "4",
			"mallSubName": "大明",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cc2af915a9",
			"mallCategoryId": "4",
			"mallSubName": "杜康",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cc535115aa",
			"mallCategoryId": "4",
			"mallSubName": "顿丘",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cc77b215ab",
			"mallCategoryId": "4",
			"mallSubName": "汾酒",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cca72e15ac",
			"mallCategoryId": "4",
			"mallSubName": "枫林",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cccae215ad",
			"mallCategoryId": "4",
			"mallSubName": "高粱酒",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ccf0d915ae",
			"mallCategoryId": "4",
			"mallSubName": "古井",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cd1d6715af",
			"mallCategoryId": "4",
			"mallSubName": "贵州大曲",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cd3f2815b0",
			"mallCategoryId": "4",
			"mallSubName": "国池",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cd5d3015b1",
			"mallCategoryId": "4",
			"mallSubName": "国窖",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cd7ced15b2",
			"mallCategoryId": "4",
			"mallSubName": "国台",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cd9b9015b3",
			"mallCategoryId": "4",
			"mallSubName": "汉酱",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cdbfd215b4",
			"mallCategoryId": "4",
			"mallSubName": "红星",
			"comments": null
		}, {
			"mallSubId": "2c9f6c946891d16801689474e2a70081",
			"mallCategoryId": "4",
			"mallSubName": "怀庄",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cdddf815b5",
			"mallCategoryId": "4",
			"mallSubName": "剑南春",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cdfd4815b6",
			"mallCategoryId": "4",
			"mallSubName": "江小白",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb1016802277c37160e",
			"mallCategoryId": "4",
			"mallSubName": "金沙",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ce207015b7",
			"mallCategoryId": "4",
			"mallSubName": "京宫",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ce46d415b8",
			"mallCategoryId": "4",
			"mallSubName": "酒鬼",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb101680226de23160d",
			"mallCategoryId": "4",
			"mallSubName": "口子窖",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ce705515b9",
			"mallCategoryId": "4",
			"mallSubName": "郎酒",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ce989e15ba",
			"mallCategoryId": "4",
			"mallSubName": "老口子",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cec30915bb",
			"mallCategoryId": "4",
			"mallSubName": "龙江家园",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cef15c15bc",
			"mallCategoryId": "4",
			"mallSubName": "泸州",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cf156f15bd",
			"mallCategoryId": "4",
			"mallSubName": "鹿邑大曲",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cf425b15be",
			"mallCategoryId": "4",
			"mallSubName": "毛铺",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cf9dc915c0",
			"mallCategoryId": "4",
			"mallSubName": "绵竹",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cfbf1c15c1",
			"mallCategoryId": "4",
			"mallSubName": "难得糊涂",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cfdd7215c2",
			"mallCategoryId": "4",
			"mallSubName": "牛二爷",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7cf71e715bf",
			"mallCategoryId": "4",
			"mallSubName": "茅台",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7d7eda715c3",
			"mallCategoryId": "4",
			"mallSubName": "绵竹",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7d96e5c15c4",
			"mallCategoryId": "4",
			"mallSubName": "难得糊涂",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dab93b15c5",
			"mallCategoryId": "4",
			"mallSubName": "牛二爷",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dae16415c6",
			"mallCategoryId": "4",
			"mallSubName": "牛栏山",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7db11cb15c7",
			"mallCategoryId": "4",
			"mallSubName": "前门",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7db430c15c8",
			"mallCategoryId": "4",
			"mallSubName": "全兴",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7db6cac15c9",
			"mallCategoryId": "4",
			"mallSubName": "舍得",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7db9a4415ca",
			"mallCategoryId": "4",
			"mallSubName": "双沟",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dc30b815cb",
			"mallCategoryId": "4",
			"mallSubName": "水井坊",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dc543e15cc",
			"mallCategoryId": "4",
			"mallSubName": "四特",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dc765c15cd",
			"mallCategoryId": "4",
			"mallSubName": "潭酒",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dc988a15ce",
			"mallCategoryId": "4",
			"mallSubName": "沱牌",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dcba5a15cf",
			"mallCategoryId": "4",
			"mallSubName": "五粮液",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dcd9e815d0",
			"mallCategoryId": "4",
			"mallSubName": "西凤",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dcf6d715d1",
			"mallCategoryId": "4",
			"mallSubName": "习酒",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dd11b215d2",
			"mallCategoryId": "4",
			"mallSubName": "小白杨",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dd2f3c15d3",
			"mallCategoryId": "4",
			"mallSubName": "洋河",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7dd969115d4",
			"mallCategoryId": "4",
			"mallSubName": "伊力特",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ddb16c15d5",
			"mallCategoryId": "4",
			"mallSubName": "张弓",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7ddd6c715d6",
			"mallCategoryId": "4",
			"mallSubName": "中粮",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7de126815d7",
			"mallCategoryId": "4",
			"mallSubName": "竹叶青",
			"comments": null
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170036_4477.png"
	}, {
		"mallCategoryId": "1",
		"mallCategoryName": "啤酒",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946016ea9b016016f79c8e0000",
			"mallCategoryId": "1",
			"mallSubName": "百威",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94608ff843016095163b8c0177",
			"mallCategoryId": "1",
			"mallSubName": "福佳",
			"comments": ""
		}, {
			"mallSubId": "402880e86016d1b5016016db9b290001",
			"mallCategoryId": "1",
			"mallSubName": "哈尔滨",
			"comments": ""
		}, {
			"mallSubId": "402880e86016d1b5016016dbff2f0002",
			"mallCategoryId": "1",
			"mallSubName": "汉德",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647cd6830e0022",
			"mallCategoryId": "1",
			"mallSubName": "崂山",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647cd706a60023",
			"mallCategoryId": "1",
			"mallSubName": "林德曼",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e1411b15d8",
			"mallCategoryId": "1",
			"mallSubName": "青岛",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e1647215d9",
			"mallCategoryId": "1",
			"mallSubName": "三得利",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e182e715da",
			"mallCategoryId": "1",
			"mallSubName": "乌苏",
			"comments": null
		}, {
			"mallSubId": "2c9f6c9468118c9c016811ab16bf0001",
			"mallCategoryId": "1",
			"mallSubName": "雪花",
			"comments": null
		}, {
			"mallSubId": "2c9f6c9468118c9c016811aa6f440000",
			"mallCategoryId": "1",
			"mallSubName": "燕京",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e19b8f15db",
			"mallCategoryId": "1",
			"mallSubName": "智美",
			"comments": null
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170044_9165.png"
	}, {
		"mallCategoryId": "2",
		"mallCategoryName": "葡萄酒",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c9460337d540160337fefd60000",
			"mallCategoryId": "2",
			"mallSubName": "澳大利亚",
			"comments": ""
		}, {
			"mallSubId": "402880e86016d1b5016016e083f10010",
			"mallCategoryId": "2",
			"mallSubName": "德国",
			"comments": ""
		}, {
			"mallSubId": "402880e86016d1b5016016df1f92000c",
			"mallCategoryId": "2",
			"mallSubName": "法国",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94621970a801626a40feac0178",
			"mallCategoryId": "2",
			"mallSubName": "南非",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e5c9a115dc",
			"mallCategoryId": "2",
			"mallSubName": "葡萄牙",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e5e68f15dd",
			"mallCategoryId": "2",
			"mallSubName": "西班牙",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e609f515de",
			"mallCategoryId": "2",
			"mallSubName": "新西兰",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e6286a15df",
			"mallCategoryId": "2",
			"mallSubName": "意大利",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e6486615e0",
			"mallCategoryId": "2",
			"mallSubName": "智利",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7e66c6815e1",
			"mallCategoryId": "2",
			"mallSubName": "中国",
			"comments": null
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170053_878.png"
	}, {
		"mallCategoryId": "3",
		"mallCategoryName": "清酒洋酒",
		"bxMallSubDto": [{
			"mallSubId": "402880e86016d1b5016016e135440011",
			"mallCategoryId": "3",
			"mallSubName": "清酒",
			"comments": ""
		}, {
			"mallSubId": "402880e86016d1b5016016e171cc0012",
			"mallCategoryId": "3",
			"mallSubName": "洋酒",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170101_6957.png"
	}, {
		"mallCategoryId": "5",
		"mallCategoryName": "保健酒",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c94609a62be0160a02d1dc20021",
			"mallCategoryId": "5",
			"mallSubName": "黄酒",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94648837980164883ff6980000",
			"mallCategoryId": "5",
			"mallSubName": "药酒",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170110_6581.png"
	}, {
		"mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
		"mallCategoryName": "预调酒",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946449ea7e01647d02f6250026",
			"mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
			"mallSubName": "果酒",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d031bae0027",
			"mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
			"mallSubName": "鸡尾酒",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d03428f0028",
			"mallCategoryId": "2c9f6c946449ea7e01647ccd76a6001b",
			"mallSubName": "米酒",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170124_4760.png"
	}, {
		"mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
		"mallCategoryName": "下酒小菜",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946449ea7e01647dc18e610035",
			"mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
			"mallSubName": "熟食",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dc1d9070036",
			"mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
			"mallSubName": "火腿",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dc1fc3e0037",
			"mallCategoryId": "2c9f6c946449ea7e01647ccf3b97001d",
			"mallSubName": "速冻食品",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170133_4419.png"
	}, {
		"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
		"mallCategoryName": "饮料",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946449ea7e01647d09cbf6002d",
			"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
			"mallSubName": "茶饮",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d09f7e8002e",
			"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
			"mallSubName": "水饮",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d0a27e1002f",
			"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
			"mallSubName": "功能饮料",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d0b1d4d0030",
			"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
			"mallSubName": "果汁",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d14192b0031",
			"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
			"mallSubName": "含乳饮料",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647d24d9600032",
			"mallCategoryId": "2c9f6c946449ea7e01647ccdb0e0001c",
			"mallSubName": "碳酸饮料",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170143_361.png"
	}, {
		"mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
		"mallCategoryName": "乳制品",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946449ea7e01647dd4ac8c0048",
			"mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
			"mallSubName": "常温纯奶",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd4f6a40049",
			"mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
			"mallSubName": "常温酸奶",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd51ab7004a",
			"mallCategoryId": "2c9f6c946449ea7e01647cd108b60020",
			"mallSubName": "低温奶",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170151_9234.png"
	}, {
		"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
		"mallCategoryName": "休闲零食",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946449ea7e01647dc51d93003c",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "方便食品",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd204dc0040",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "面包糕点",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd22f760041",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "糖果巧克力",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd254530042",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "膨化食品",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7fa132b15e7",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "坚果炒货",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7f4bfc415e2",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "肉干豆干",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7f5027a15e3",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "饼干",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94679b4fb10167f7f530fd15e4",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "冲调",
			"comments": null
		}, {
			"mallSubId": "2c9f6c94683a6b0d016846b49436003b",
			"mallCategoryId": "2c9f6c946449ea7e01647ccfddb3001e",
			"mallSubName": "休闲水果",
			"comments": null
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170200_7553.png"
	}, {
		"mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
		"mallCategoryName": "粮油调味",
		"bxMallSubDto": [{
			"mallSubId": "2c9f6c946449ea7e01647dd2e8270043",
			"mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
			"mallSubName": "油/粮食",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd31bca0044",
			"mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
			"mallSubName": "调味品",
			"comments": ""
		}, {
			"mallSubId": "2c9f6c946449ea7e01647dd35a980045",
			"mallCategoryId": "2c9f6c946449ea7e01647cd08369001f",
			"mallSubName": "酱菜罐头",
			"comments": ""
		}],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20181212/20181212115842_9733.png"
	}, {
		"mallCategoryId": "2c9f6c9468a85aef016925444ddb271b",
		"mallCategoryName": "积分商品",
		"bxMallSubDto": [],
		"comments": null,
		"image": "http://images.baixingliangfan.cn/firstCategoryPicture/20190225/20190225232703_9950.png"
	}];