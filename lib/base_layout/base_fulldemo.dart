import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

Column buildButtonColumn(IconData icon, String label) => Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.lightGreen[600],
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        )
      ],
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "布局综合案例",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          useMaterial3: true,
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen[600],
        ),
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    title: const Text(
                      "武夷山风景区",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  body: ListView(
                    children: <Widget>[
                      // 标题图。
                      Image.asset(
                        "assets/images/banner1.jpeg",
                        width: 600,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      // 地址区域。
                      Container(
                        padding: const EdgeInsets.all(32),
                        child: Row(children: <Widget>[
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: const Text(
                                  "风景区地址",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "湖北省十堰市丹江口市",
                                style: TextStyle(color: Colors.grey.shade500),
                              )
                            ],
                          )),
                          Icon(
                            Icons.star,
                            color: Colors.red[500],
                          ),
                          const Text("66")
                        ]),
                      ),
                      // 操作按钮。
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          buildButtonColumn(Icons.phone, "电话"),
                          buildButtonColumn(Icons.near_me, "导航"),
                          buildButtonColumn(Icons.share, "分享"),
                        ],
                      ),
                      // 文字介绍。
                      Container(
                        padding: const EdgeInsets.all(32),
                        child: const Text(
                          """
　　武夷山（Mount Wuyi），武夷山位于江西与福建西北部两省交界处，武夷山脉北段东南麓总面积999.75平方公里，是中国著名的风景旅游区和避暑胜地。属典型的丹霞地貌，是首批国家级重点风景名胜区之一。
　　武夷山是三教名山。自秦汉以来，武夷山就为羽流禅家栖息之地，留下了不少宫观、道院和庵堂故址。武夷山还曾是儒家学者倡道讲学之地。
　　武夷山自然保护区，是地球同纬度地区保护最好、物种最丰富的生态系统，拥有2527种植物物种，近5000种野生动物。
　　武夷山是世界文化与自然双重遗产、世界生物圈保护区、全国重点文物保护单位（武夷山崖墓群）、国家重点风景名胜区、国家AAAAA级旅游景区、国家级自然保护区、国家水利风景区、国家生态旅游示范区、全国文明风景旅游区示范点。
　　1999年12月，根据世界遗产遴选标准 (Ⅲ)(Ⅵ)(Ⅶ)(Ⅹ)，武夷山（Mount Wuyi）被联合国教科文组织列入《世界遗产名录》（编号911）的世界文化与自然双重遗产，成为中国世界遗产之一。
　　2017年7月9日，江西铅山武夷山“申遗”成功，被列入世界文化与自然遗产地。2020年，武夷山自恢复开放之日起至2020年12月31日对全国医护工作者(含港澳台地区)免费。
""",
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                )),
      );
}
