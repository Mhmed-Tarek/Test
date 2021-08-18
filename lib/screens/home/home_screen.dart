import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/components/custom_card.dart';
import 'package:iti_summer_course_tutorial/models/custom_card_model.dart';
//import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _indextab = 0;

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
      body: getTasksList(),
    );
  }

  Widget getTasksList() {
    return Scaffold(
      backgroundColor: HexColor("#F2F2F2"),
      body: Container(
        child: Stack(
          children: [

              Stack( children: [


                Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child:
                      Container(
                        //height: 135,
                        width: 1,
                      ),
      ),

                      Row(
                        children: [
                          Container(
                            height: 1,
                            width: 30,
                          ),
                          //alignment: Alignment(-0.68, 0.6),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good morning",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: "Cairo",
                                  // height: 1.2,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Mohamed,",
                                style: TextStyle(
                                  // height: 1.2,
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Expanded(
                        flex: 2,
                        child:
                        Container(
                          //height: 135,
                          width: 1,
                        ),
                      ),


                    ],
                  ),
              height: 275,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/BackgroundMac.png"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
                color: Colors.green,
              ),
            ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  titleSpacing: 0,
                  actions: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            size: 35,
                          ),
                          //tooltip: 'Open shopping cart',
                          color: HexColor("#F29F05"),
                          onPressed: () {
                            // handle the press
                          },
                        ),
                        Container(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                  elevation: 0.0,
                  title: Row(
                    children: [
                      Container(
                        width: 30,
                      ),
                      Container(
                        width: 51,
                        height: 51,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/macLogo.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),

              ], ),

            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 30, right: 25, left: 25),

                    decoration: BoxDecoration(
                      boxShadow: [
                        //color: Colors.white, //background color of box
                        BoxShadow(
                          color: Colors.transparent.withOpacity(0),
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            4.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      //color: Colors.transparent,
                      color: HexColor("#F2F2F2"),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    // color: Colors.red,
                    // height: 100,

                    child: DefaultTabController(
                      initialIndex: _indextab,
                      length: 2,
                      child: Column(
                        children: [
                          Container(
                            child: TabBar(
                              // indicatorSize: TabBarIndicatorSize.values[ 5,5,5,5,] ,

                              indicatorPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              indicator: BoxDecoration(
                                  boxShadow: [
                                    //color: Colors.white, //background color of box
                                    BoxShadow(
                                      color:
                                          HexColor("#F29F05").withOpacity(0.5),
                                      blurRadius: 10.0, // soften the shadow
                                      spreadRadius: 0.0, //extend the shadow
                                      offset: Offset(
                                        0.0, // Move to right 10  horizontally
                                        4.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(
                                      50), // Creates border
                                  color: HexColor("#F29F05")),

                              labelPadding: EdgeInsets.symmetric(vertical: 0),
                              onTap: (index) {
                                setState(() {
                                  _indextab = index;
                                });
                              },
                              indicatorColor: Colors.transparent,
                              tabs: <Widget>[
                                Tab(
                                  // text: "Conversations" ,
                                  child: Align(
                                    //alignment: Alignment(-1, 0),

                                    //mainAxisAlignment: MainAxisAlignment.start,

                                    //SizedBox(width: 30),
                                    child: Center(
                                      child: _indextab == 0
                                          ? Text(
                                              "Reviews",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              ),
                                            )
                                          : Text(
                                              "Reviews",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  // text: "Conversations" ,
                                  child: Align(
                                    // alignment: Alignment(1, 0),
                                    //alignment: Alignment(-0.8,0),
                                    //SizedBox(width: 30),
                                    child: Center(
                                      child: _indextab == 1
                                          ? Text(
                                              "Conversations",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              ),
                                            )
                                          : Text(
                                              "Conversations",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Expanded(child:
                          Container(
                            // height: double.infinity * 0.2,
                            // height: MediaQuery.of(context).size.height *0.7 ,
                            height: 480,
                            child: TabBarView(
                              //physics: NeverScrollableScrollPhysics(),
                              children: [

                               Expanded( child:
                                ListView(
                                  // crossAxisCount: 1,
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                                  //  mainAxisSpacing: 10,
                                  //  crossAxisSpacing: 10,
                                  children: List.generate(
                                      20,
                                      (index) => CustomeCard(
                                            cardModel: new CustomCardModel(
                                              title: "Ahmed Mohamed",
                                              date: "2021/8/10 - 12pm",
                                              icon:
                                                  "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
                                              onCardClick: () {
                                                print("Hello from parent");
                                              },
                                            ),
                                          )),
                                ),
                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.04, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/Nothing.png",
                                          width: 200,
                                          height: 200,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "There is no conversation to show.",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      "Go get a life",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   titleSpacing: 0,
      //   actions: <Widget>[
      //     Row(
      //       children: [
      //         IconButton(
      //           icon: const Icon(
      //             Icons.menu,
      //             size: 35,
      //           ),
      //           //tooltip: 'Open shopping cart',
      //           color: HexColor("#F29F05"),
      //           onPressed: () {
      //             // handle the press
      //           },
      //         ),
      //         Container(
      //           width: 20,
      //         ),
      //       ],
      //     ),
      //   ],
      //   elevation: 0.0,
      //   title: Row(
      //     children: [
      //       Container(
      //         width: 30,
      //       ),
      //       Container(
      //         width: 51,
      //         height: 51,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           image: DecorationImage(
      //               image: AssetImage("assets/images/macLogo.jpg"),
      //               fit: BoxFit.fill),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class ActContainer extends StatelessWidget {
  String act = "0";
  ActContainer(this.act);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          //color: Colors.white, //background color of box
          BoxShadow(
            color: Colors.transparent.withOpacity(0),
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              4.0, // Move to bottom 10 Vertically
            ),
          )
        ],
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          act,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}

class FalseContainer extends StatelessWidget {
  String act = "0";
  FalseContainer(this.act);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 55,
      color: Colors.transparent,
      child: Center(
        child: Text(
          act,
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

/*
  Widget getUsersGrid() {
    return GridView.count(
      crossAxisCount: 1,
      padding: EdgeInsets.all(16),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(
          20,
          (index) => CustomeCard(
                cardModel: new CustomCardModel(
                  title: "Ahmed Mohamed",
                  date: "a.mohamed@gmail.com",
                  icon:
                      "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
                  onCardClick: () {
                    print("Hello from parent");
                  },
                ),
              )),
    );
  }
}*/
