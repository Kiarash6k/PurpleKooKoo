import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';



import 'Boxes.dart';
import 'Login.dart';
import 'Long.dart';
import 'Recomend.dart';


class HomeScreeen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 1.1 ,
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
              colors: [
              Color.fromARGB(255, 55, 35, 187),
            //Color.fromARGB(255, 24, 14, 86),
            Color.fromARGB(255, 54, 0, 90)
          ])),
      child: MaterialApp(
        
        home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            SizedBox(
              height: height / 40,
            ),
            Column(
                  children: [
                    SizedBox(
                      height: height / 40,
                    ),
                    Row(children: [
                      SizedBox(
                        width: width / 20,
                      
                      ),
                      Image.asset(
                        "assets/images/Ham.png",
                        color: Colors.white,
                        scale: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * .23),
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      
                          
                    ]),
                  ],
                ),
            SizedBox(
              height: height / 35,
            ),
            Container(
                width: width,
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
              height: height / 20,
            ),
            Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
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
                      ],
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
              height: height / 30,),
            SizedBox(
              height: height / 6,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 3,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              height: MediaQuery.of(context).size.height / 50,),
               Column(
                children: [
                    Recommended("QTUM","575.213","qtum","-0.03%",Colors.red),
                    SizedBox(
                    height: 10,),
                    Recommended("ADA","784.33","ada","+5.7%",Colors.green),
                    SizedBox(
                    height: 10,),
                    Recommended("XRP","1.223","xrp","+1.35%",Colors.green),
                    SizedBox(
                    height: 10,),
                    Recommended("EOS","7.8.0","eos","-10.2%",Colors.red),
                    SizedBox(
                    height: 10,),
                    Recommended("BTC","22000.0","btc","-0.03%",Colors.red),
              
                   
                ]
              ),
            
   
          ]),
          floatingActionButton: SpeedDial(
    
    direction: SpeedDialDirection.down,
    buttonSize: Size(45, 45),
    icon: Icons.alarm_add,
    iconTheme: IconThemeData(size: 45),
    activeIcon: Icons.close,
    elevation: 0.0,
    activeBackgroundColor: Color.fromARGB(255, 54, 0, 90),
    animatedIconTheme: IconThemeData(size: 28.0),
    backgroundColor: Color.fromARGB(0, 255, 255, 255),
    foregroundColor: Color.fromARGB(255, 255, 255, 255),
    visible: true,
    curve: Curves.bounceInOut,
    children: [
      SpeedDialChild(
        child: Icon(Icons.alarm_add, color: Colors.white),
        backgroundColor: Color.fromARGB(255, 54, 0, 90),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Simple()),
          );
        
        },
        label: 'Simple Alarm',
        labelStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        labelBackgroundColor: Colors.black,
      ),
      SpeedDialChild(
        child: Image.asset(
          "assets/images/Long.png",
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 54, 0, 90),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Long()),
          );
        },
        label: 'Future Positions',
        labelStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        labelBackgroundColor: Colors.black,
      ),
      
    ],
  ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          
        ),
        
      ),
      
    );
  }
  List<Box> list =  [
    Box("BTC","19680.0","btc","-0.03%"),
    Box("ETC","15.0","etc","-0.1%"),
    Box("ETH","1100.0","eth","-7.49%"),
    Box("LTC","452.0","ltc","-2.52%"),
  ];
  
  Widget BoxBuilder(Box list) {
      
    return Box(list.title,list.description,list.image,list.PS);
   
  }
  
}