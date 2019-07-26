import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './second.dart' as second;
import './invest.dart';





class First extends StatefulWidget{
  var user;
  First({this.user});
  @override
  FirstState createState() => FirstState();
}

class FirstState extends State<First>{



  @override
Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.grey[100],
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
              

               
               
                SizedBox(height: 10.0,),

              
              Container(
                 
                height: 200.0,
                width: 500.0,
                margin: EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0),
                 border:Border.all(color:Colors.black),
                 boxShadow: [new BoxShadow(
                   color: Colors.white,
                   blurRadius: 40.0,
                 )
                 ]
               ),
               
              child:  Column(children: <Widget>[
                  SizedBox(height: 1.0,),



                     SizedBox(height: 6.0,),
                           Stack(
                             children: <Widget>[

                              

                               Column(
                                 children: <Widget>[
                                   Container(

                                         margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                         height: 70.0,
                                         width: 360.0,
                                         decoration: BoxDecoration(
                                           color: Colors.amber
                                         ),
                                         child: Image.asset('images/k1.jpg',fit:BoxFit.cover),
                                       ),

                                       Row(
                                         children: <Widget>[
                                        SizedBox(width: 10.0,),   
                                   Container(
                                     height: 20.0,
                                     child:  Image.asset('images/k.jpg'),
                                   
                                   ),

                                   
                                         ],
                                       ),

                                       SizedBox(height: 20.0,),

                                   Stack(
                                     children:<Widget>[
                                        Row(
                                    children: <Widget>[
                                              SizedBox(width: 10.0,),
                                   Text('For Beginners',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),


                                      Stack(
                                       children: <Widget>[
                                   
                                         Row(
                                         children:<Widget>[
                                           SizedBox(width: 35.0,),
                                           
                                            
                                         ]),
                                       ],
                                     ),

                                    ]),



                                     
                                     ]
                                ),
                                SizedBox(height: 15.0,),

                                 
                                   Row(
                                    children: <Widget>[
                                              SizedBox(width: 12.0,),
                                   Text('Plan - Rs 50',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 8.0)),
                                    

                                    
                                      

                                    ],
                                  ),

                                  SizedBox(height: 7.0,),
                                
                                  Row(
                                    children: <Widget>[
                                   SizedBox(width: 100.0,),

                                   Container(
                                     height: 20.0,
                                      child: FloatingActionButton.extended(
                                          heroTag: 'btn1',
                                       backgroundColor: Colors.grey[200],
                                       onPressed: (){
                                         final snackbar = SnackBar(
                                           content: Text('See you Soon...'),
                                         );
                                         Scaffold.of(context).showSnackBar(snackbar);
                                        
                                       },
                                       elevation: 6.0,
                                       label: Text('Leave ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                     ),
                                   ),

                                   SizedBox(width: 20.0,),

                                   Container(
                                     height: 21.0,
                                       child: FloatingActionButton.extended(
                                         heroTag: 'btnn1',
                                       backgroundColor: Colors.blue[300],
                                       onPressed: (){
                                         
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Invest(user: widget.user,cypher:'Plan worth 50 Coins')));
                                       
                                       },
                                       
                                       elevation: 10.0,
                                       label: Text('Invest ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                     ),
                                   ),

                                    
                                      

                                    ],
                                  ),

                                  


                                 ],
                               ),

                                   Column(

                                     children: <Widget>[
                                       SizedBox(height: 55.0,width: 375.0,),

                                       Container(
                                     height: 30.0,
                                     decoration: BoxDecoration(
                                       border: Border.all(color: Colors.black)
                                     ),
                                     width: 100.0,
                                     child: Image.asset('images/j2.gif',fit: BoxFit.cover,),
                                   ),
                                   SizedBox(height: 10.0,),


                                   InkWell(
                      onTap: (){
                        showModalBottomSheet(
                          
                          context: (context),
                          builder: (builder){
                            return Container(
                             decoration: BoxDecoration(color: Colors.white),
                             child: ListView(children: <Widget>[
                               SizedBox(height: 10.0,),
                               Container(
                                 height: 90.0,
                                 child: Image.asset('images/j.gif'),
                               ),

                               SizedBox(height: 20.0),

                               Text('Welcome to "Cypher" the official small investment plan. This group is for beginners, start earning with the investment of Rs 50 only',
                               
                              textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),

                               ),
                               Text('This Group is for newcomers so that one can join learn and build their own team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Assured return if atleast 3 members joins under your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),

                               Text('NOTE',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),
                               Text('Only 3 level income is allowed that is only 12 members can join your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),
                              
                               Text('Level-1  =  One member(User)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-2  =  Three members(Users members)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-3  =  Nine members(Members of level-2)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                                SizedBox(height: 10.0,),
                               Text('Instructions',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                               SizedBox(height: 10.0,),

                               Text('* You[user] are instructed to make a team of atleast 3 members',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),
                               Text('* These members will have to join "Cypher" that is small investment plan',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                              
                              SizedBox(height: 5.0),
                              Text('* Once these members joins your team with Rs 50 only , you will get Rs 75 + 10% of this Level that is 82.5 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Now you are not allowed to join more members in your team in level-2, You will have to ask your team members (3 members in level-2) to join 3 members each that is 9 members in total in level-3',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 4,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-3 is complete, you will going to get Rs 82.5 + 10% of this Level that is 105 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Your team member will get 90 Rs each and you will earn 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You will earn 10% from each level, higher level = higher earning',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You are not required to work as your team members(3 members) will work for you and you will going to earn 10% at every level by doing nothing',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Income Pattern',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),

                                SizedBox(height: 10.0),

                               Text('* Level-1 = Investment of Rs 50',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-2 = Income of Rs 75 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-3 = Income of 82.5 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-4 = Income of 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* And So On',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Note',style: TextStyle(fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),

                               Text('"Cypher" is limited to Level-3 only',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                               SizedBox(height: 10.0,),

                               Text('Upgrade to "Alpha" for more income ',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                              
                              SizedBox(height: 20.0,),




                               
                             ],),
                             
                             );
                          }
                        );
                      },
                                child: Chip(
                       
                        
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        elevation: 6.0,
                        backgroundColor: Colors.white,
                        avatar: Icon(Icons.info),
                        label: Text('info'),
                      ),
                    ),


                                   
                                     ],
                                   ),
                             ],
                           ),

                              
                                    



                 

                 

                
                     

                    
                   
                  


                  



                ],),
              

              ),


               SizedBox(height: 10.0,),

              
              Container(
                height: 200.0,
                width: 500.0,
                margin: EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 boxShadow: [new BoxShadow(
                   color: Colors.white,
                   blurRadius: 40.0,
                 )
                 ],
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0),
                 border:Border.all(color:Colors.black)
                 
               ),
              child: Column(children: <Widget>[
                SizedBox(height: 1.0,),



                   SizedBox(height: 6.0,),
                         Stack(
                           children: <Widget>[

                            

                             Column(
                               children: <Widget>[
                                 Container(

                                       margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                       height: 70.0,
                                       width: 360.0,
                                       decoration: BoxDecoration(
                                      
                                         color: Colors.amber
                                       ),
                                       child: Image.asset('images/k2.jpg',fit:BoxFit.cover),
                                     ),

                                     Row(
                                       children: <Widget>[
                                      SizedBox(width: 10.0,),   
                                 Container(
                                   height: 20.0,
                                   child:  Image.asset('images/k.jpg'),
                                 
                                 ),

                                 
                                       ],
                                     ),
                                     SizedBox(height:20.0),

                                Stack(
                                     children:<Widget>[
                                        Row(
                                    children: <Widget>[
                                              SizedBox(width: 10.0,),
                                   Text('For Skilled',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),


                                      Stack(
                                       children: <Widget>[
                                   
                                         Row(
                                         children:<Widget>[
                                           SizedBox(width: 55.0,),
                                           
                                           
                                         ]),
                                       ],
                                     ),

                                    ]),



                                     
                                     ]
                                ),

                                SizedBox(height: 15.0,),

                               
                                 Row(
                                  children: <Widget>[
                                            SizedBox(width: 12.0,),
                                 Text('Plan - Rs 100',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 8.0)),
                                  

                                  
                                    

                                  ],
                                ),
                                SizedBox(height:7.0),
                              
                                Row(
                                  children: <Widget>[
                                 SizedBox(width: 100.0,),

                                 Container(
                                   height: 20.0,
                                                              child: FloatingActionButton.extended(
                                                                heroTag: 'btn2',
                                     backgroundColor: Colors.grey[200],
                                     onPressed: (){
                                       final snackbar = SnackBar(
                                         content: Text('See you Soon...'),
                                       );
                                       Scaffold.of(context).showSnackBar(snackbar);
                                      
                                     },
                                     elevation: 6.0,
                                     label: Text('Leave ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                   ),
                                 ),

                                 SizedBox(width: 20.0,),

                                 Container(
                                   height: 21.0,
                                     child: FloatingActionButton.extended(
                                       heroTag: 'btnn2',
                                     backgroundColor: Colors.blue[300],
                                     onPressed: (){
                                       

                                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Invest(user: widget.user,cypher:'Plan worth 100 Coins')));
                                     
                                     
                                     
                                     },
                                     
                                     elevation: 10.0,
                                     label: Text('Invest ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                   ),
                                 ),

                                  
                                    

                                  ],
                                ),

                                


                               ],
                             ),

                                 Column(

                                   children: <Widget>[
                                     SizedBox(height: 55.0,width: 375.0,),

                                     Container(
                                   height: 30.0,
                                   decoration: BoxDecoration(
                                     boxShadow: [new BoxShadow(
                   color: Colors.white,
                   blurRadius: 40.0,
                 )
                 ],
                                     border: Border.all(color: Colors.black)
                                   ),
                                   width: 100.0,
                                   child: Image.asset('images/j3.gif',fit: BoxFit.cover,),
                                 ),

                                 SizedBox(height: 10.0,),

                                  InkWell(
                      onTap: (){
                        showModalBottomSheet(
                          
                          context: (context),
                          builder: (builder){
                            return Container(
                             decoration: BoxDecoration(color: Colors.white),
                             child: ListView(children: <Widget>[
                               SizedBox(height: 10.0,),
                               Container(
                                 height: 90.0,
                                 child: Image.asset('images/j.gif'),
                               ),

                               SizedBox(height: 20.0),

                               Text('Welcome to "Alpha" the official Moderate investment plan. This group is for people who wants to earn maximum profit, start earning with the investment of Rs 100 only',
                               
                              textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),

                               ),
                               Text('This Group is for Skilled ones so that one can join and build their large team and earn Huge',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Assured return if atleast 3 members joins under your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),

                               Text('NOTE',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),
                               Text('Only 4 level income is allowed that is only 39 members can join your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),
                              
                               Text('Level-1  =  One member(User)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-2  =  Three members(Users members)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-3  =  Nine members(Members of level-2)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-4  =  Twenty seven members(Members of level-3)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                                SizedBox(height: 10.0,),
                               Text('Instructions',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                               SizedBox(height: 10.0,),

                               Text('* You[user] are instructed to make a team of atleast 3 members',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),
                               Text('* These members will have to join "Alpha" that is Skilled investment plan',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                              
                              SizedBox(height: 5.0),
                              Text('* Once these members joins your team with Rs 100 only , you will get Rs 150 + 10% of this Level that is 165 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Now you are not allowed to join more members in your team in level-2, You will have to ask your team members (3 members in level-2) to join 3 members each that is 9 members in total in level-3',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 4,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-3 is complete, you will going to get Rs 165 + 10% of this Level that is 210 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Your team member will get 165 Rs each and you will earn 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-4 is complete, you will going to get Rs 210 + 10% of this Level that is 345 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You will earn 10% from each level, higher level = higher earning',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You are not required to work as your team members(3 members) will work for you and you will going to earn 10% at every level by doing nothing',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Income Pattern',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),

                                SizedBox(height: 10.0),

                               Text('* Level-1 = Investment of Rs 100',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-2 = Income of Rs 150 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-3 = Income of 165 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-4 = Income of 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* And So On',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Note',style: TextStyle(fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),

                               Text('"Alpha" is limited to Level-4 only',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                               SizedBox(height: 10.0,),

                               Text('Upgrade to "Chroma" for more income',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                              
                              SizedBox(height: 20.0,),




                               
                             ],),
                             
                             );
                          }
                        );
                      },
                                child: Chip(
                       
                        
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        elevation: 6.0,
                        backgroundColor: Colors.white,
                        avatar: Icon(Icons.info),
                        label: Text('info'),
                      ),
                    ),

                                 

                                 
                                   ],
                                 ),
                           ],
                         ),

                            
                                  



               

               

              
                   

                  
                 
                


                



              ],),

              ),


               SizedBox(height: 10.0,),

              
              Container(
                height: 200.0,
                width: 500.0,
                margin: EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 boxShadow: [new BoxShadow(
                   color: Colors.white,
                   blurRadius: 40.0,
                 )
                 ],
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0),
                 border:Border.all(color:Colors.black)
                 
               ),
              child: Column(children: <Widget>[
                SizedBox(height: 1.0,),



                   SizedBox(height: 6.0,),
                         Stack(
                           children: <Widget>[

                            

                             Column(
                               children: <Widget>[
                                 Container(

                                       margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                       height: 70.0,
                                       width: 360.0,
                                       decoration: BoxDecoration(
                                         color: Colors.amber
                                       ),
                                       child: Image.asset('images/k3.jpg', fit: BoxFit.cover,),
                                     ),

                                     Row(
                                       children: <Widget>[
                                      SizedBox(width: 10.0,),   
                                 Container(
                                   height: 20.0,
                                   child:  Image.asset('images/k.jpg'),
                                 
                                 ),

                                 
                                       ],
                                     ),
                                     SizedBox(height:20.0),
                              
                              
                               Stack(
                                     children:<Widget>[
                                        Row(
                                    children: <Widget>[
                                              SizedBox(width: 10.0,),
                                   Text('For Professionals',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),


                                      Stack(
                                       children: <Widget>[
                                   
                                         Row(
                                         children:<Widget>[
                                           SizedBox(width: 12.0,),
                                           
                                           
                                         ]),
                                       ],
                                     ),

                                    ]),



                                     
                                     ]
                                ),
                                SizedBox(height: 15.0,),

                               
                                 Row(
                                  children: <Widget>[
                                            SizedBox(width: 12.0,),
                                 Text('Plan - Rs 500',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 8.0)),
                                  

                                  
                                    

                                  ],
                                ),
                                SizedBox(height: 7.0,),
                              
                                Row(
                                  children: <Widget>[
                                 SizedBox(width: 100.0,),

                                 Container(
                                   height: 20.0,
                                                              child: FloatingActionButton.extended(
                                                                heroTag: 'btn3',
                                     backgroundColor: Colors.grey[200],
                                     onPressed: (){
                                       final snackbar = SnackBar(
                                         content: Text('See you Soon...'),
                                       );
                                       Scaffold.of(context).showSnackBar(snackbar);
                                      
                                     },
                                     elevation: 6.0,
                                     label: Text('Leave ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                   ),
                                 ),

                                 SizedBox(width: 20.0,),

                                 Container(
                                   height: 21.0,
                                     child: FloatingActionButton.extended(
                                       heroTag: 'btnn4',
                                     backgroundColor: Colors.blue[300],
                                     onPressed: (){
                                       
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Invest(user: widget.user,cypher:'Plan worth 500 Coins')));
                                     
                                     
                                     },
                                     
                                     elevation: 10.0,
                                     label: Text('Invest ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                   ),
                                 ),

                                  
                                    

                                  ],
                                ),

                                


                               ],
                             ),

                                 Column(

                                   children: <Widget>[
                                     SizedBox(height: 55.0,width: 375.0,),

                                     Container(
                                   height: 30.0,
                                   decoration: BoxDecoration(
                                     border: Border.all(color: Colors.black)
                                   ),
                                   width: 100.0,
                                   child: Image.asset('images/j4.gif',fit: BoxFit.cover,),
                                 ),

                                 SizedBox(height: 10.0,),
                                  InkWell(
                      onTap: (){
                        showModalBottomSheet(
                          
                          context: (context),
                          builder: (builder){
                            return Container(
                             decoration: BoxDecoration(color: Colors.white),
                             child: ListView(children: <Widget>[
                               SizedBox(height: 10.0,),
                               Container(
                                 height: 90.0,
                                 child: Image.asset('images/j.gif'),
                               ),

                               SizedBox(height: 20.0),

                               Text('Welcome to "Chroma" the official Professionals investment plan. This group is for Professionals, start earning with the investment of Rs 500 only',
                               
                              textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),

                               ),
                               Text('This Group is for Professionals so that they can join and Earn upto lakhs with their team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Assured return if atleast 3 members joins under your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),

                               Text('NOTE',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),
                               Text('Only 8 level income is allowed that is only 3279 members can join your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),
                              
                               Text('Level-1  =  One member(User)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-2  =  Three members(Users members)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-3  =  Nine members(Members of level-2)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-4  =  Twenty seven members(Members of level-3)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-5  =  Eighty one members(Members of level-4)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-6  =  Two hundred and forty three members(Members of level-5)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-7  =  Seven hundred and twenty nine members(Members of level-6)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-8  =  Two thousand one hundred and eighty seven members(Members of level-7)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                                SizedBox(height: 10.0,),
                               Text('Instructions',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                               SizedBox(height: 10.0,),

                               Text('* You[user] are instructed to make a team of atleast 3 members',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),
                               Text('* These members will have to join "Chroma" that is Professionals investment plan',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                              
                              SizedBox(height: 5.0),
                              Text('* Once these members joins your team with Rs 500 only , you will get Rs 750 + 10% of this Level that is 825 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Now you are not allowed to join more members in your team in level-2, You will have to ask your team members (3 members in level-2) to join 3 members each that is 9 members in total in level-3',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 4,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-3 is complete, you will going to get Rs 825 + 10% of this Level that is 1050 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Your team member will get 825 Rs each and you will earn 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-4 is complete, you will going to get Rs 1050 + 10% of this Level that is 1725 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-5 is complete, you will going to get Rs 1725 + 10% of this Level that is 3750 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-6 is complete, you will going to get Rs 3750 + 10% of this Level that is 9825 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-7 is complete, you will going to get Rs 9825 + 10% of this Level that is 28050 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-8 is complete, you will going to get Rs 28050 + 10% of this Level that is 82725 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You will earn 10% from each level, higher level = higher earning',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You are not required to work as your team members(3 members) will work for you and you will going to earn 10% at every level by doing nothing',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Income Pattern',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),

                                SizedBox(height: 10.0),

                               Text('* Level-1 = Investment of Rs 500',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-2 = Income of Rs 750 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-3 = Income of 825 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-4 = Income of 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* And So On',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Note',style: TextStyle(fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),

                               Text('"Chroma" is limited to Level-8 only',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                               SizedBox(height: 10.0,),

                               Text('Upgrade to "Titan" for unlimited offers',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                              SizedBox(height: 20.0,),





                               
                             ],),
                             
                             );
                          }
                        );
                      },
                                child: Chip(
                       
                        
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        elevation: 6.0,
                        backgroundColor: Colors.white,
                        avatar: Icon(Icons.info),
                        label: Text('info'),
                      ),
                    ),

                                 
                                   ],
                                 ),
                           ],
                         ),

                            
                                  



               

               

              
                   

                  
                 
                


                



              ],),

              ),

               SizedBox(height: 10.0,),

              
              Container(
                height: 200.0,
                width: 500.0,
                margin: EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 boxShadow: [new BoxShadow(
                   color: Colors.white,
                   blurRadius: 40.0,
                 )
                 ],
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0),
                 border:Border.all(color:Colors.black)
                 
               ),
              child: Column(children: <Widget>[
                SizedBox(height: 1.0,),



                   SizedBox(height: 6.0,),
                         Stack(
                           children: <Widget>[

                            

                             Column(
                               children: <Widget>[
                                 Container(

                                       margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                       height: 70.0,
                                       width: 360.0,
                                       decoration: BoxDecoration(
                                         color: Colors.amber
                                       ),
                                       child: Image.asset('images/k4.jpg',fit:BoxFit.cover),
                                     ),

                                     Row(
                                       children: <Widget>[
                                      SizedBox(width: 10.0,),   
                                 Container(
                                   height: 20.0,
                                   child:  Image.asset('images/k.jpg'),
                                 
                                 ),

                                 
                                       ],
                                     ),
                                     SizedBox(height: 20.0,),

                               Stack(
                                     children:<Widget>[
                                        Row(
                                    children: <Widget>[
                                              SizedBox(width: 10.0,),
                                   Text('Special Program',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),


                                      Stack(
                                       children: <Widget>[
                                   
                                         Row(
                                         children:<Widget>[
                                           SizedBox(width: 18.0,),
                                           
                                          
                                         ]),
                                       ],
                                     ),

                                    ]),



                                     
                                     ]
                                ),

                                SizedBox(height:15.0),

                                    

                                 

                               
                                 Row(
                                  children: <Widget>[
                                            SizedBox(width: 12.0,),
                                 Text('Plan - Rs 1000',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 8.0)),
                                  

                                  
                                    

                                  ],
                                ),
                                SizedBox(height: 7.0,),
                              
                                Row(
                                  children: <Widget>[
                                 SizedBox(width: 100.0,),

                                 Container(
                                   height: 20.0,
                                    child: FloatingActionButton.extended(

                                      heroTag: 'btnn5',                          
                                     backgroundColor: Colors.grey[200],
                                     onPressed: (){
                                       final snackbar = SnackBar(
                                         content: Text('See you Soon...'),
                                       );
                                       Scaffold.of(context).showSnackBar(snackbar);
                                      
                                     },
                                     elevation: 6.0,
                                     label: Text('Leave ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                   ),
                                 ),

                                 SizedBox(width: 20.0,),

                                 Container(
                                   height: 21.0,
                                     child: FloatingActionButton.extended(
                                       heroTag: 'btn4',
                                     backgroundColor: Colors.blue[300],
                                     onPressed: (){
                                       
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Invest(user: widget.user,cypher:'Plan worth 1000 Coins')));
                                     
                                     
                                     },
                                     
                                     elevation: 10.0,
                                     label: Text('Invest ',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100)),
                                   ),
                                 ),

                                  
                                    

                                  ],
                                ),

                                


                               ],
                             ),

                                 Column(

                                   children: <Widget>[
                                     SizedBox(height: 55.0,width: 375.0,),

                                     Container(
                                   height: 30.0,
                                   decoration: BoxDecoration(
                                     border: Border.all(color: Colors.black)
                                   ),
                                   width: 100.0,
                                   child: Image.asset('images/j5.gif',fit: BoxFit.cover,),
                                 ),
                                 SizedBox(height: 10.0,),

                                   InkWell(
                      onTap: (){
                        showModalBottomSheet(
                          
                          context: (context),
                          builder: (builder){
                            return Container(
                             decoration: BoxDecoration(color: Colors.white),
                             child: ListView(children: <Widget>[
                               SizedBox(height: 10.0,),
                               Container(
                                 height: 90.0,
                                 child: Image.asset('images/j.gif'),
                               ),

                               SizedBox(height: 20.0),

                               Text('Welcome to "Titan" the investors choice plan. This group is for Investors, start earning with the investment of Rs 1000 only',
                               
                              textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),

                               ),
                               Text('This Group is for Investors so that one can build their own team and earn upto Crore',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Assured return if atleast 3 members joins under your team',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),

                               Text('NOTE',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),
                               Text('Unlimited level with Unlimited income is allowed ',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0,),
                              
                               Text('Level-1  =  One member(User)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-2  =  Three members(Users members)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-3  =  Nine members(Members of level-2)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('Level-4  =  Twenty seven members(Members of level-3)',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                               Text('And so on , upto infinite',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),

                                SizedBox(height: 10.0,),
                               Text('Instructions',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                               SizedBox(height: 10.0,),

                               Text('* You[user] are instructed to make a team of atleast 3 members',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),
                               Text('* These members will have to join "Titan" that is Special investment plan',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                              
                              SizedBox(height: 5.0),
                              Text('* Once these members joins your team with Rs 1000 only , you will get Rs 1500 + 10% of this Level that is 1650 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Now you are not allowed to join more members in your team in level-2, You will have to ask your team members (3 members in level-2) to join 3 members each that is 9 members in total in level-3',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 4,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-3 is complete, you will going to get Rs 1650 + 10% of this Level that is 2100 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Your team member will get 1650 Rs each and you will earn 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-4 is complete, you will going to get Rs 2100 + 10% of this Level that is 3450 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-5 is complete, you will going to get Rs 3450 + 10% of this Level that is 7500 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-6 is complete, you will going to get Rs 7500 + 10% of this Level that is 19650 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-7 is complete, you will going to get Rs 19650 + 10% of this Level that is 56100 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-8 is complete, you will going to get Rs 56100 + 10% of this Level that is 165450 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-9 is complete, you will going to get Rs 165450 + 10% of this Level that is 493500 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-10 is complete, you will going to get Rs 493500 + 10% of this Level that is 1477650 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-11 is complete, you will going to get Rs 1477650 + 10% of this Level that is 4430100 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Once Level-12 is complete, you will going to get Rs 4430100 + 10% of this Level that is 13287450 Rs only',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* And So On ...',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You will earn 10% from each level, higher level = higher earning',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* You are not required to work as your team members(3 members) will work for you and you will going to earn 10% at every level by doing nothing',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Income Pattern',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),

                                SizedBox(height: 10.0),

                               Text('* Level-1 = Investment of Rs 50',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-2 = Income of Rs 1500 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-3 = Income of 1650 + 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* Level-4 = Income of 10% from this level',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 5.0),

                               Text('* And So On',textAlign: TextAlign.center,                    
                               overflow: TextOverflow.ellipsis,
                               maxLines: 3,
                               style: TextStyle(fontFamily: 'Maven Pro'),
                               ),
                               SizedBox(height: 10.0),

                               Text('Note',style: TextStyle(fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),

                               SizedBox(height: 10.0,),

                               Text('"Titan" is Unlimited ',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                               SizedBox(height: 10.0,),

                               Text('Happy to see You  Becoming Millionaire',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Maven Pro'),),

                              SizedBox(height: 20.0,),





                               
                             ],),
                             
                             );
                          }
                        );
                      },
                                child: Chip(
                       
                        
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        elevation: 6.0,
                        backgroundColor: Colors.white,
                        avatar: Icon(Icons.info),
                        label: Text('info'),
                      ),
                    ),

                                 
                                   ],
                                 ),
                           ],
                         ),

                            
                                  



               

               

              
                   

                  
                 
                


                



              ],),

              ),


        



      ],
      
  ),
            ],
          ),
    );
}

}

