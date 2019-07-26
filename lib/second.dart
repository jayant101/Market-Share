import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix1;
import 'package:marketshare/style/theme.dart' as Theme;


class Second extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return new Scaffold(
    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[

        Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[ Colors.amber[200],Colors.orange,Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                ),
              ),
        new ListView(
          children: <Widget>[
            Card(
              elevation: 60.0,
                      child: ExpansionTile(
                title: Text('Gold Market Scheme',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                children: <Widget>[
                  
                    Stack(
                      children: <Widget>[
                        Image.asset('images/k5.jpg',fit: BoxFit.fitWidth,),

                        Text('InvestorsChoice',style: TextStyle(color: Colors.white),)
                      ],
                    ),

                  Row(children: <Widget>[
                      Container(
                        color:Colors.white,

                        
                                     height: 20.0,
                                     child:  Row(children: <Widget>[
                                       Icon(Icons.star,color: Colors.amber,size: 18.0,),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0)
                                     ],)
                                   
                                   ),
                                   
                                   
                                   
                                   SizedBox(width: 45.0,),

                                   Text('Not Available in India',style: TextStyle(),),





                         
                  ],)
                ],
              ),
            ),


             Card(
               elevation: 60.0,
                      child: ExpansionTile(
                title: Text('Oil Market Scheme',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                children: <Widget>[
                  
                    Stack(
                      children: <Widget>[
                        Image.asset('images/k6.jpg',fit: BoxFit.fitWidth,),

                        Text('InvestorsChoice',style: TextStyle(color: Colors.white),)
                      ],
                    ),

                  Row(children: <Widget>[
                      Container(
                        color:Colors.white,

                        
                                     height: 20.0,
                                     child:  Row(children: <Widget>[
                                       Icon(Icons.star,color: Colors.amber,size: 18.0,),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0),
                                       Icon(Icons.star,color: Colors.amber,size: 18.0)
                                     ],)
                                   
                                   ),
                                   
                                   
                                   
                                   SizedBox(width: 45.0,),

                                   Text('Not Available in India',style: TextStyle(),),





                         
                  ],)
                ],
              ),
            ),

            Column(
              
              children: <Widget>[

                SizedBox(
                  height: 20.0,
                ),
                Stack(

                  children: <Widget>[
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        Container(
                          height: 150.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              
                              colors: [Colors.green[50],Colors.green[300]],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Donate for the world',style: TextStyle(fontFamily: 'WorkSansSemiBold',fontSize: 12.0),),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        SizedBox(height: 25.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              width: 300.0,
                              decoration: BoxDecoration(
                               
                                
                              ),
                              child: Image.asset('images/k7.jpg',fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                  
                    Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[

                            SizedBox(height: 120.0,),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                 
                                  child: FroastedContainer(Text('     Donation Program',style: TextStyle(fontSize: 12.0,fontFamily: 'WorkSansSemiBold'),)
                                 
                                  ),
                                ),
                              ],
                            ),

                            

                            

                            
                          ],
                        ),

                          Column(
                            children: <Widget>[
                              SizedBox(height: 150.0,),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Your Small Contribution will reflect in future',style: TextStyle(fontSize: 7.0),),
                                

                              ],
                            ),

                            Text('Spread Love',style: TextStyle(fontSize: 7.0),)
                            ],
                          ),


                          Column(
                            children: <Widget>[
                              SizedBox(height:35.0 ,),
                              Row(    

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                    Container(
                margin: EdgeInsets.only(top: 145.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 10.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 4.0),
                      child: Text(
                        "DONATE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {        
                    }

                    
                      
                      ),

                      

                    
                          
                        
              ),
                                ],
                              ),
                            ],
                          )


                      ],
                    ),
                  ],
                ),
              ],
            ),
              SizedBox(height: 10.0,),
              Stack(children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 150.0,
                      width: 300.0,
                      decoration:BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                  ],
                ),

                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 50.0,),
                        Container(
                          height: 140.0,
                          width: 300.0,
                          child: Image.asset('images/k8.jpg',fit: BoxFit.cover,),
                        )
                      ],
                    ),
                  ],
                ),
              ],),

              SizedBox(height:20.0)
          ],
        ),
      ],
    ),
  );
}
}

Widget FroastedContainer(Widget child ){
  return ClipRRect(
    
    borderRadius: BorderRadius.circular(20.0),
    child: BackdropFilter(
      filter: prefix0.ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
      child: Container(
        height: 80.0,
        width: 150.0,
        color: Colors.white.withOpacity(0.5),
        child: child,
      ),
    ),
  );
}