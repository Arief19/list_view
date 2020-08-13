import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListView",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: new Text("Dream Car"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTutor(
            gambar:
                "https://upload.wikimedia.org/wikipedia/commons/0/03/2015_Volkswagen_Scirocco_GT_BlueMotion_Tech_2.0.jpg",
            judul: "Volkswagen Scirocco",
          ),
          new ListTutor(
            gambar:
                "https://upload.wikimedia.org/wikipedia/commons/5/59/2013_Volkswagen_Golf_SE_BlueMotion_Technology_1.4_Front.jpg",
            judul: "Volkswagen Golf",
          ),
          new ListTutor(
            gambar: "https://i.ytimg.com/vi/mq2PWdw1Uaw/maxresdefault.jpg",
            judul: "Toyota AE86 Trueno",
          ),
          new ListTutor(
            gambar:
                "https://asset.kompas.com/crops/OPtSLR4VzJMQaNy0r17aka669mI=/54x36:612x408/750x500/data/photo/2020/03/30/5e80dd28b9c2d.jpeg",
            judul: "Toyota Starlet",
          ),
          new ListTutor(
            gambar:
                "https://asset.kompas.com/crops/OPtSLR4VzJMQaNy0r17aka669mI=/54x36:612x408/750x500/data/photo/2020/03/30/5e80dd28b9c2d.jpeg",
            judul: "Toyota Starlet",
          ),
          new ListTutor(
            gambar:
                "https://upload.wikimedia.org/wikipedia/commons/4/4a/2018_Volkswagen_Polo_R-Line_TSi_1.0_Front.jpg",
            judul: "Volkswagen Polo",
          ),
          new ListTutor(
            gambar:
                "https://c4.wallpaperflare.com/wallpaper/843/164/1000/1983-320i-alpina-bmw-wallpaper-preview.jpg",
            judul: "BMW E30 Alpina",
          ),
          new ListTutor(
            gambar:
                "https://4.bp.blogspot.com/-lTJob1g7c4U/WZr9Y0m3OGI/AAAAAAAAAxY/LrDOhujCWFcwcA53dojVWC0xx4VNwf-SACEwYBhgL/s1600/Kelebihan%2Bdan%2BKekurangan%2BLancer%2BEvo%2B4.jpg",
            judul: "Mitsubishi Lancer Evo 4",
          ),
          new ListTutor(
            gambar:
                "https://i.pinimg.com/originals/5e/1a/38/5e1a386a0b1e75fcd982c808782068ce.jpg",
            judul: "Mazda CX - 3",
          ),
          new ListTutor(
            gambar:
                "https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/gridoto/2018/04/20/3564423146.jpeg",
            judul: "BMW E36",
          )
        ],
      ),
    );
  }
}

class ListTutor extends StatelessWidget {
  ListTutor({this.gambar, this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar),
              width: 100.0,
            ),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  new Text(
                    "Deskripsi mobil tersebut",
                    style: new TextStyle(
                        fontSize: 12.0, color: Colors.greenAccent),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
