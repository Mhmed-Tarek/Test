import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iti_summer_course_tutorial/models/custom_card_model.dart';

class CustomeCard extends StatelessWidget {
  final CustomCardModel cardModel;
  CustomeCard({required this.cardModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.5),
        ),
        child: Container(
          width: 20,
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //ListTile( leading:  , ),

                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 25,
                      ),

                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/Avatat.png"),
                              fit: BoxFit.fill),
                        ),
                      ),


                      /*
                      FadeInImage.assetNetwork(
                        placeholder: "assets/images/Avatat.png",
                        image: "${this.cardModel.icon}",
                        width: 40.0,
                        height: 40.0,
                      ),*/


                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(                  height: 30.0,                ),
                          Text(
                            "${this.cardModel.title}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "${this.cardModel.date}",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/images/speech_bubble_with_dots_120px.png',
                                width: 32, height: 32),
                          ),),
                      ),

                      SizedBox(
                        width: 23,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 1,
                child: new Center(
                  child: new Container(
                    margin: new EdgeInsetsDirectional.only(start: 25, end: 25),
                    height: 5.0,
                    color: HexColor("#707070").withOpacity(0.25),
                  ),
                ),
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 32,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                      27.5) //                 <--- border radius here
                                  ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 1,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                //shadowColor: Colors.black ,
                                //elevation: 0.7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.5),
                                ),
                                backgroundColor: HexColor("#208C8C"),
                                padding: const EdgeInsets.all(1.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {},
                              child: const Text('😍'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Excellent")
                    ],
                  ),

                  Row(
                    children: [

                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/images/timeline_120px.png',
                                width: 32, height: 32),
                          ),),
                      ),

                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//logical pixel
