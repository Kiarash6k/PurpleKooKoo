import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';



import 'Boxes.dart';
import 'Recomend.dart';

class HomeScreeen extends StatefulWidget {
  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 24, 14, 86),
            Color.fromARGB(255, 54, 0, 90)
          ])),
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Row(children: [
                  Image.asset(
                    "assets/images/Ham.png",
                    color: Colors.white,
                    scale: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .23),
                    child: Text(
                      "Dashboard",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .23),
                      child: Image.asset(
                        "assets/images/kookoo.png",
                        color: Colors.white,
                        scale: 10,
                      )),
                ])),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Active Alarms",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(89, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "3 Assets",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Text(
                          "show assets",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(89, 255, 255, 255),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Color.fromARGB(89, 255, 255, 255),
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      "Favorite assets ",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Color.fromARGB(89, 255, 255, 255),
                      size: 17,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Text(
                      " show all",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(89, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )),
                SizedBox(
              height: MediaQuery.of(context).size.height / 30,),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 40,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BoxBuilder(list[index]);
                },
                itemCount: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,),
       Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Text(
                      "View More",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(89, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )),
                SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Column(
                children: [
                    Recommended("SJCX","575.213",CryptoFontIcons.SJCX,"-0.03%",Colors.red),
                    SizedBox(
                    height: 10,),
                    Recommended("Dash","784.33",CryptoFontIcons.DASH,"+5.7%",Colors.green),
                    SizedBox(
                    height: 10,),
                    Recommended("GLD","19680.0",CryptoFontIcons.GLD,"+1.35%",Colors.green),
                    SizedBox(
                    height: 10,),
                    Recommended("KMD","19680.0",CryptoFontIcons.KMD,"-10.2%",Colors.red),
                    SizedBox(
                    height: 10,),
                    Recommended("BTC","19680.0",CryptoFontIcons.BTC,"-0.03%",Colors.red),
              
                   
                ]
              ),
            ),
   
          ]),
        ),
      ),
    );
  }
  List<Box> list =  [
    Box("BTC","19680.0",CryptoFontIcons.BTC,"-0.03%"),
    Box("ETC","15.0",CryptoFontIcons.ETC,"-0.1%"),
    Box("ETH","1100.0",CryptoFontIcons.ETH,"-7.49%"),
    Box("LTC","452.0",CryptoFontIcons.LTC,"-2.52%"),
  ];
  
  Widget BoxBuilder(Box list) {
      
    return Box(list.title,list.description,list.image,list.PS);
   
  }
  
}