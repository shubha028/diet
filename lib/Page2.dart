import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    selectedImg = arguments['image'];
    selectTitle = arguments['title'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: Colors.pinkAccent,
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(

              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('3-10 Min Course', style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Live happier and healthier by learning the fundamentals of meditation and mindfulness', style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),

                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 5,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('$selectTitle', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 15,
                                  spreadRadius: 1
                              )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('asset/$selectedImg.png')
                                    )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Basics 2', style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),),
                                    Text('Start and deepen your patience', style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text('Basics 2', style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),),
                                    Text('Start and deepen your patience', style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text('Basics 2', style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),),
                                    Text('Start and deepen your patience', style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),

                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.calendar),
                        Text('Today')
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Container sessionWidget(String title, bool activeOrNot)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 15,
              spreadRadius: 1
          )]
      ),
      child: Row(
        children: <Widget>[
          Icon(
            (activeOrNot == true) ? Icons.play_circle_filled : Icons.play_circle_outline,
            color: Color(0xff817dc0),
            size: 50,
          ),
          SizedBox(width: 10,),
          Text('$title', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
