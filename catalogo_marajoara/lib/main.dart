import 'package:catalogomarajoara/Views/NewSalvaterra.dart';
import 'package:catalogomarajoara/Views/NewSoure.dart';
import 'package:flutter/material.dart';
import 'package:catalogomarajoara/Views/saibaMais.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );

  BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-3652623512305285/9885248908',
    size: AdSize.fullBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );

  BannerAd _bannerAd;

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3652623512305285~5040470589");

    _bannerAd = myBanner
      ..load()
      ..show(anchorType: AnchorType.bottom);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "Imagens/TesouroMarajoara4.JPG",
            fit: BoxFit.cover,
            height: 1000,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "   Olá, bem-vindo(a) ao ",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "  Catálogo",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  )),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "  Marajoara.",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              Padding(padding: EdgeInsets.all(0.0)),
              Align(
                alignment: Alignment.bottomLeft,
                child: ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      saibaMais()));
                        },
                        child: Text(
                          "Saiba mais   ",
                          style: TextStyle(color: Colors.yellow),
                        ))
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "   Escolha o catálogo: ",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueAccent),
                    child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SalvaterraNew()));
                        },
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Center(
                              child: Hero(
                                  tag: 'Salvaterra',
                                  child: Text(
                                    "Salvaterra",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        inherit: false),
                                  )),
                            ))
                          ],
                        )),
                  )),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purpleAccent),
                    child: InkWell(
                        splashColor: Colors.orange,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => SoureNew()));
                        },
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                  child: Text(
                                "Soure",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              )),
                            )
                          ],
                        )),
                  )),
              SizedBox(
                height: 70,
              )
            ],
          )
        ],
      ),
    );
  }
}