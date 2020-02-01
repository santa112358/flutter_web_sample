import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> newItemList = ["https://net-fine.com/img/catalog_153/ag329.jpg","https://net-fine.com/img/catalog_153/ag328.jpg","https://net-fine.com/img/catalog_153/ag327.jpg","https://net-fine.com/img/catalog_153/bc016.jpg","https://net-fine.com/img/catalog_153/bc032.jpg","https://net-fine.com/img/catalog_153/bc029.jpg","https://net-fine.com/img/catalog_153/bc030.jpg","https://net-fine.com/img/catalog_153/bc030.jpg","https://net-fine.com/img/catalog_153/bc031.jpg","https://net-fine.com/img/catalog_153/ag329.jpg","https://net-fine.com/img/catalog_153/ag328.jpg","https://net-fine.com/img/catalog_153/ag327.jpg","https://net-fine.com/img/catalog_153/bc016.jpg","https://net-fine.com/img/catalog_153/bc032.jpg","https://net-fine.com/img/catalog_153/bc029.jpg","https://net-fine.com/img/catalog_153/bc030.jpg","https://net-fine.com/img/catalog_153/bc030.jpg","https://net-fine.com/img/catalog_153/bc031.jpg"];
    final List<String> flowerUrlList = ["https://net-fine.com/img/rank/ag290.jpg","https://net-fine.com/img/rank/ag114.jpg","https://net-fine.com/img/rank/ag278.jpg","https://net-fine.com/img/rank/ag121.jpg","https://net-fine.com/img/rank/bc016.jpg","https://net-fine.com/img/rank/ag265.jpg","https://net-fine.com/img/rank/bt04.jpg","https://net-fine.com/img/rank/ag193.jpg","https://net-fine.com/img/rank/ag311.jpg","https://net-fine.com/img/rank/ag232.jpg"];
    final List<String> imageUrlList = ["https://net-fine.com/img/slider/branche.jpg","https://net-fine.com/img/slider/interiorgreen02.jpg","https://net-fine.com/img/slider/brocante.jpg","https://net-fine.com/img/slider/wedding3.jpg","https://net-fine.com/img/slider/birthday05.jpg"];
    return SingleChildScrollView(
      child: Column(children: <Widget>[
      SizedBox(height: 30,),
      Row(
        children: <Widget>[
          SizedBox(width: 100,),
          Container(
            height: 100,
            child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSfQvmvWJaEkP1cG9L9GMkq7YqTKoeX9LAjVvX0t-6WwYQ12Z8r"
            )
          ),
          SizedBox(width: 30,),
          Column(
            children: <Widget>[
              SizedBox(height: 12,),
              Text("ブリザーブドフラワー専門店　フラワーサロンリリー",style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
              Text("Flower Salon　Lily",style: TextStyle(fontSize: 35,decoration: TextDecoration.none,color: Colors.pink)),
              Text("日本フラワーサロン協会(JFSA)会員",style: TextStyle(fontSize: 20,decoration: TextDecoration.none))
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 200,),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: const Text("メッセージカード無料",style: TextStyle(fontSize: 4,decoration: TextDecoration.none,color: Colors.white),textAlign: TextAlign.center,),
                )
              ),
              SizedBox(width: 16,),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: const Text("配達日時指定OK",style: TextStyle(fontSize: 4,decoration: TextDecoration.none,color: Colors.white),textAlign: TextAlign.center,),
                )
              ),
              SizedBox(width: 16,),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: const Text("ギフト商品のラッピング無料",style: TextStyle(fontSize: 4,decoration: TextDecoration.none,color: Colors.white),textAlign: TextAlign.center,),
                )
              ),
            ],
          ),
          SizedBox(width: 40,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("会社概要",style: TextStyle(fontSize: 8,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.start,),
              SizedBox(height: 8,),
              Text("当店のお花",style: TextStyle(fontSize: 8,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.start),
              SizedBox(height: 8,),
              Text("買い物かご",style: TextStyle(fontSize: 8,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.start),
              SizedBox(height: 8,),
              Text("お支払い、送料、返品",style: TextStyle(fontSize: 8,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.start),
            ],
          )
  
        ],
      ),
      CarouselSlider(
        viewportFraction: 0.4,
        autoPlayInterval: Duration(seconds: 3),
        autoPlay: true,
      height: 600.0,
      items: imageUrlList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 700,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.network(i),
            );
          },
        );
      }).toList(),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 100),
        child: Text("Ranking",style: TextStyle(fontSize: 40,decoration: TextDecoration.none,color: Colors.red,decorationStyle: TextDecorationStyle.solid),textAlign: TextAlign.start),
      )
    ),
    CarouselSlider.builder(
      aspectRatio: 1,
      viewportFraction: 0.3,
      autoPlayInterval: Duration(seconds: 4),
      autoPlay: true,
      height: 500.0,
      itemCount: flowerUrlList.length,
     itemBuilder: (BuildContext context, int index) => Column(
       children: <Widget>[
         Text('No.${index + 1}',style: TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.center),
         SizedBox(height: 20),
         Image.network(flowerUrlList[index]),
         SizedBox(height: 10),
         Text('${index + 1}000円',style: TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.center),
       ],
    )),
        Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 100),
        child: Text("Pick Up",style: TextStyle(fontSize: 40,decoration: TextDecoration.none,color: Colors.red,decorationStyle: TextDecorationStyle.solid),textAlign: TextAlign.start),
      )
    ),
    Container(
      height: 800,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.only(left: 50),
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 300,
          width: 400,
          child: Image.network(imageUrlList[index]),
        ),
        SizedBox(
          height: 300,
          width: 400,
          child: Image.network(imageUrlList[index + 1]),
        ),
        
        
      ],
    )
      )
    ),
    ),
     Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 100),
        child: Text("New Item",style: TextStyle(fontSize: 40,decoration: TextDecoration.none,color: Colors.red,decorationStyle: TextDecorationStyle.solid),textAlign: TextAlign.start),
      )
    ),
        Container(
      height: 700,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.only(left: 70),
        child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
          height: 300,
          width: 200,
          child: Image.network(newItemList[index]),
        ),
        Text('${index + 3}000円',style: TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.center),
          ],
        ),
        Column(
          children: <Widget>[
        SizedBox(
          height: 300,
          width: 200,
          child: Image.network(newItemList[index + 1]),
        ),
        Text('${index + 4}000円',style: TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black),textAlign: TextAlign.center),
          ],
        ),
        
        
      ],
    )
      )
    ),
    ),

    ])
    );
  }
}

