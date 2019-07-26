import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:marketshare/style/theme.dart' as Theme;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';


import 'package:marketshare/third.dart';

class MyAcc extends StatefulWidget{
  var user;
  MyAcc({this.user});
  @override 
  MyAccState createState()=> MyAccState();
}

class MyAccState extends State<MyAcc>{






  TextEditingController accno=prefix0.TextEditingController();
  TextEditingController ifsc=prefix0.TextEditingController();
  TextEditingController name=prefix0.TextEditingController();
  

dialog(String name){
  if(name == 'Cypher'){
  showDialog(
                  context: (context),
                  builder: (builder){
                    return  FutureBuilder(
                                future: getData(),
                                builder: (context,snapshot)
                                {
                                  if(snapshot.connectionState==ConnectionState.waiting){
                                      return Center(child: Container(child: Text('Loading',style:TextStyle(decoration:TextDecoration.none,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: "Maven Pro",letterSpacing: 1.0)),),);
                              
                                  }
                                  else{
                                    return  Center(
                                          child: Material(
                                            borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          
                          width: 250.0,
                          height: 400.0,
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          ),
                          child: ListView(children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0),topRight: Radius.circular(12.0)),
                                gradient: LinearGradient(
                                  colors: [Colors.white,Colors.red[50],Colors.red[100],Colors.pink[200]],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                ),

                              ),
                            ),

                            Divider(),

                            Row(mainAxisAlignment:MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Cypher',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)
                             ), ],),


                                Divider(),
                               
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Cypher level-1 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                           
                                 
                                 
                                 
                               
                                title:Text('Level-1 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                                children: <Widget>[
                                  Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[

                                    

                                    

                                    

                        Text(snapshot.data[0].data['name'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,)


                                    

                               

                                    
                            
                              
                                  ],),
                                  
                                ],                       
                            
                                
                               ),

                             

                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:Text(snapshot.data[0].data['Cypher level-2 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                              
                               title:Text('Level-2 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                               children: <Widget>[

                             

                      Text(snapshot.data[0].data['Cf1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 
                          
                              SizedBox(height: 10.0,),
                               
                          Text(snapshot.data[0].data['Cf2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),

                          Text(snapshot.data[0].data['Cf3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 

                              SizedBox(height: 10.0,)
                               ],                      
                            
                                
                               ),


                          ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Cypher level-3 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                title:Text('Level-3 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                                
                                children: <Widget>[

                               
                                 Text(snapshot.data[0].data['Cs1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 
                              SizedBox(height: 10.0,),
                                
                                 Text(snapshot.data[0].data['Cs2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                SizedBox(height: 10.0,),
                                 Text(snapshot.data[0].data['Cs3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                     SizedBox(height: 10.0,),
                     Text(snapshot.data[0].data['Cs4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                     SizedBox(height: 10.0,),
                     Text(snapshot.data[0].data['Cs5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                     SizedBox(height: 10.0,),
                     Text(snapshot.data[0].data['Cs6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                   SizedBox(height: 10.0,),
                     Text(snapshot.data[0].data['Cs7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                     SizedBox(height: 10.0,),
                     
                     Text(snapshot.data[0].data['Cs8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                     SizedBox(height: 10.0,),
                     
                     Text(snapshot.data[0].data['Cs9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
 

                             
                              SizedBox(height: 10.0,)
                                ],           
                            
                                
                               ),

                              
                          





                          ],)
                          
                        ),
                      ),
                    );  }
                                },
                              );
                    
                    
                    
                    
                    
                  }
                );
  }


   if(name == 'Alpha'){
  showDialog(
                  context: (context),
                  builder: (builder){
                    return FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                                return Center(child: Container(child: Text('Loading',style:TextStyle(decoration:TextDecoration.none,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: "Maven Pro",letterSpacing: 1.0)),),);
                                     }
                        else{
                          return Center(
                                          child: Material(
                                            borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          
                          width: 250.0,
                          height: 400.0,
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          ),
                          child: ListView(children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0),topRight: Radius.circular(12.0)),
                                gradient: LinearGradient(
                                  colors: [Colors.white,Colors.red[50],Colors.red[100],Colors.pink[200]],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                ),

                              ),
                            ),

                            Divider(),

                            Row(mainAxisAlignment:MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Alpha',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)
                             ), ],),


                                Divider(),
                               
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing: Text(snapshot.data[0].data['Alpha level-1 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                            
                                title:Text('Level-1 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                                children: <Widget>[
                                  Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                 
                                   Text(snapshot.data[0].data['name'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),

                              SizedBox(height: 10.0,)
                              
                                  ],),
                                  
                                ],                       
                            
                                
                               ),

                             

                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:Text(snapshot.data[0].data['Alpha level-2 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
 
                                title:Text('Level-2 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                                children: <Widget>[

                                Text(snapshot.data[0].data['Af1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['Af2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['Af3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),

                               

                              prefix0.SizedBox(height: 10.0,)
                                ],
                                
                               ),


                          ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Alpha level-3 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                           
                                title:Text('Level-3 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),


                                children: <Widget>[
                                  
                                Text(snapshot.data[0].data['As1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                  SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                     SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                     SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                     SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                     SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                     SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                      SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                     SizedBox(height: 10.0,),
                                Text(snapshot.data[0].data['As9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),

                              SizedBox(height: 10.0,),


                            
                              SizedBox(height: 10.0,),
                                  
                                ],        
                            
                                
                               ),

                              ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Alpha level-4 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                            
                                title:Text('Level-4 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                     children: <Widget>[


                            Text(snapshot.data[0].data['At1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                   SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                              SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                   SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                  SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                  SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                   SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At10'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At11'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                            SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At12'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                            SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At13'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                              SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At14'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At15'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At16'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At17'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At18'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At19'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At20'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                   SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At21'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At22'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                   SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At23'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At24'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At25'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At26'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                       SizedBox(height: 10.0,),
                             Text(snapshot.data[0].data['At27'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),

                               
                                 
                              
                              SizedBox(height: 10.0,), 
                             
                                     ],                              
                            
                                
                               ),
                          





                          ],)
                          
                        ),
                      ),
                    ); }
                      },
                    );
                    
                    
                    
                    
                    
                  }
                );
  }



  if(name == 'Chroma'){
  showDialog(
                  context: (context),
                  builder: (builder){
                    return FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return Center(child: Container(child: Text('Loading',style:TextStyle(decoration:TextDecoration.none,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: "Maven Pro",letterSpacing: 1.0)),),);
                             
                        }
                        else{
                          return Center(
                                          child: Material(
                                            borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          
                          width: 250.0,
                          height: 400.0,
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          ),
                          child: ListView(children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0),topRight: Radius.circular(12.0)),
                                gradient: LinearGradient(
                                  colors: [Colors.white,Colors.red[50],Colors.red[100],Colors.pink[200]],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                ),

                              ),
                            ),

                            Divider(),

                            Row(mainAxisAlignment:MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Chroma',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)
                             ), ],),


                                Divider(),
                               
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Chroma level-1 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                            
                                title:Text('Level-1 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                                children: <Widget>[
                                  Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                              Text(snapshot.data[0].data['name'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 
                              SizedBox(height: 10.0,),
                              
                                  ],),
                                  
                                ],                       
                            
                                
                               ),

                             

                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Chroma level-2 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                           
                                title:Text('Level-2 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            children: <Widget>[
                             Text(snapshot.data[0].data['Chf1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,),

                              Text(snapshot.data[0].data['Chf2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,),
                           Text(snapshot.data[0].data['Chf3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,),


                             
                              SizedBox(height: 10.0,),

                              
                            ],
                                
                               ),


                          ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Chroma level-3 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                           
                                title:Text('Level-3 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            children: <Widget>[
                             Text(snapshot.data[0].data['Chs1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),

                               
                              SizedBox(height: 10.0,),

                            Text(snapshot.data[0].data['Chs2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Chs9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),


                            
                              SizedBox(height: 10.0,),

                              
                            ],
                                
                               ),

                              ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:Text(snapshot.data[0].data['Chroma level-4 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                           
                                title:Text('Level-4 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            children: <Widget>[


                              Text(snapshot.data[0].data['Cht1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),

                              Text(snapshot.data[0].data['Cht2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Cht9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),

                             
                              SizedBox(height: 10.0,),
                            ],
                                
                               ),

                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:   Text(snapshot.data[0].data['Chroma level-5 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
     title:Text('Level-5 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing: Text(snapshot.data[0].data['Chroma level-6 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
  
                                title:Text('Level-6 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing: Text(snapshot.data[0].data['Chroma level-7 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
  
                                title:Text('Level-7 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:Text(snapshot.data[0].data['Chroma level-8 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                             
 
                                title:Text('Level-8 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                          





                          ],)
                          
                        ),
                      ),
                    );}
                      },
                    );
                    
                    
                    
                    
                    
                   
                  }
                );
  }


   if(name == 'Titan'){
  showDialog(
                  context: (context),
                  builder: (builder){
                    return FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return Center(child: Container(child: Text('Loading',style:TextStyle(decoration:TextDecoration.none,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: "Maven Pro",letterSpacing: 1.0)),),);
                             
                        }
                        else{
                          return Center(
                                          child: Material(
                                            borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          
                          width: 250.0,
                          height: 400.0,
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          ),
                          child: ListView(children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0),topRight: Radius.circular(12.0)),
                                gradient: LinearGradient(
                                  colors: [Colors.white,Colors.red[50],Colors.red[100],Colors.pink[200]],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                ),

                              ),
                            ),

                            Divider(),

                            Row(mainAxisAlignment:MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Titan',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)
                             ), ],),


                                Divider(),
                               
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Titan level-1 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                            
                                title:Text('Level-1 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                                children: <Widget>[
                                  Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                              Text(snapshot.data[0].data['name'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                 
                              SizedBox(height: 10.0,),
                              
                                  ],),
                                  
                                ],                       
                            
                                
                               ),

                             

                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Titan level-2 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                           
                                title:Text('Level-2 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            children: <Widget>[
                             Text(snapshot.data[0].data['Tf1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,),

                              Text(snapshot.data[0].data['Tf2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,),
                           Text(snapshot.data[0].data['Tf3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                                
                              SizedBox(height: 10.0,),


                             
                              SizedBox(height: 10.0,),

                              
                            ],
                                
                               ),


                          ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:  Text(snapshot.data[0].data['Titan level-3 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                           
                                title:Text('Level-3 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            children: <Widget>[
                             Text(snapshot.data[0].data['Ts1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),

                               
                              SizedBox(height: 10.0,),

                            Text(snapshot.data[0].data['Ts2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),
                        Text(snapshot.data[0].data['Ts9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                             
                               
                              SizedBox(height: 10.0,),


                            
                              SizedBox(height: 10.0,),

                              
                            ],
                                
                               ),

                              ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:Text(snapshot.data[0].data['Titan level-4 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),

                           
                                title:Text('Level-4 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            children: <Widget>[


                              Text(snapshot.data[0].data['Tt1'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),

                              Text(snapshot.data[0].data['Tt2'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt3'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt4'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt5'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt6'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt7'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt8'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),Text(snapshot.data[0].data['Tt9'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 1.0)),
                               
                              SizedBox(height: 10.0,),

                             
                              SizedBox(height: 10.0,),
                            ],
                                
                               ),

                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:   Text(snapshot.data[0].data['Titan level-5 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
     title:Text('Level-5 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing: Text(snapshot.data[0].data['Chroma level-6 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
  
                                title:Text('Level-6 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing: Text(snapshot.data[0].data['Titan level-7 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
  
                                title:Text('Level-7 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                               ExpansionTile(
                                 leading: Icon(Icons.add_circle,color: Colors.black,),
                                 trailing:Text(snapshot.data[0].data['Titan level-8 member'],style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                 
                             
 
                                title:Text('Level-8 member',style:TextStyle(decoration:TextDecoration.none,color: Colors.black,fontSize: 8.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansSemiBold",letterSpacing: 2.0)),
                                                                   
                            
                                
                               ),
                          





                          ],)
                          
                        ),
                      ),
                    );}
                      },
                    );
                    
                    
                    
                    
                    
                   
                  }
               
                );
  }


}

getData() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection(widget.user.uid).getDocuments();

    return qn.documents;
  }
    final databaseReference = FirebaseDatabase.instance.reference();




  @override 
  Widget build(BuildContext context){
    return Scaffold(
    
      body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF4F4F4),
         /*   gradient: LinearGradient(
              colors: [Colors.white,Colors.pink[50],Colors.amber[50]],
              begin:Alignment.topLeft,
              end:Alignment.bottomRight,
            )*/
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20.0,),

              Container(
                height: 80.0,

                child:Center(child:Image.asset('images/h1.png') ,) 
              ),
              SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

            

              Container(
                height: 1.0,
                width: 30.0,
                color: Colors.grey,
              ),
              SizedBox(width: 1.0,),
    
               Text('  Display Name  ',style: TextStyle(fontSize: 12.0,fontFamily: 'Maven Pro',fontWeight: FontWeight.normal,letterSpacing: 4.0)),
              SizedBox(
                width: 1.0,
              ),
              Container(
                height: 1.0,
                width: 30.0,
                color: Colors.grey,
              ),
    
            ],),
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                height: 30.0,
                width: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Center(child:  FutureBuilder(
                        future: getData(),
                        builder: (context,snapshot)
                        {
                          if(snapshot.connectionState==ConnectionState.waiting){
                               return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       
                          }
                          else{
                            return Text('Coins '+snapshot.data[0].data['coins'],style: TextStyle(fontSize: 12.0,color: Colors.green,fontFamily: 'Maven Pro'),);
                          }
                        },
                      ),
                
           
              )),

              SizedBox(width: 30.0,),

              Container(
                height: 30.0,
                width: 150.0,
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8.0)
                ),

                child: Center(child: FutureBuilder(
                        future: getData(),
                        builder: (context,snapshot)
                        {
                          if(snapshot.connectionState==ConnectionState.waiting){
                               return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       
                          }
                          else{
                            return Text(snapshot.data[0].data['current investment'],style: TextStyle(fontSize: 12.0,color: Colors.green,fontFamily: 'Maven Pro'),);
                          }
                        },
                      ),
                
                
                
              ),)
              ],
            ),

            SizedBox(height: 10.0,),


            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        SizedBox(width: 4.0,),
                        Text('Cypher',style:TextStyle(fontWeight:FontWeight.bold,letterSpacing: 2.0,color: Colors.black,fontFamily: "Maven Pro"))
                      ],),

                      SizedBox(height: 5.0,),

                      Row(
                        children: <Widget>[
                          SizedBox(width: 4.0,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              
                            ),
                            width: 80.0,
                            child: Image.asset('images/j2.gif',fit: BoxFit.cover,),
                          ),

                          SizedBox(width: 5.0,),

                          Column(
                           
                            children: <Widget>[
                            Text("First Investment Group",style: TextStyle(fontFamily: 'Maven Pro',fontWeight:FontWeight.normal,letterSpacing: 2.0,color: Colors.black),),
                          
                          Row(children: <Widget>[
                               Text('Beginners',style: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,color: Colors.grey[400]),),

                            SizedBox(width: 135.0,)
                          ],),

                          Row(children: <Widget>[

                          SizedBox(height: 10.0,),

                          ],),

                          Row(children: <Widget>[
                            prefix0.Icon(Icons.person_pin_circle,color:Colors.red),
                            SizedBox(width: 4.0,),
                            
                             FutureBuilder(
                        future: getData(),
                        builder: (context,snapshot)
                        {
                          if(snapshot.connectionState==ConnectionState.waiting){
                               return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       
                          }
                          else{
                            return Text(snapshot.data[0].data['Cypher member count'],style: TextStyle(fontFamily: 'Maven Pro'),);
                          }
                        },
                      ),
                            
                            
                            
                            

                            SizedBox(width: 150.0,),
                          ],),

                          Row(mainAxisAlignment: prefix0.MainAxisAlignment.end,
                            children: <Widget>[
                                  

                             InkWell(
                               onTap: (){
                               
                               dialog('Cypher');
                               },
                               child: Text('Tap for info',style: TextStyle(fontSize: 10.0,color: Colors.grey[400],fontWeight: prefix0.FontWeight.bold),))
                     
                            ],
                          )
                          ],)
                          
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        SizedBox(width: 4.0,),
                        Text('Alpha',style:TextStyle(fontWeight:FontWeight.bold,letterSpacing: 2.0,color: Colors.black,fontFamily: "Maven Pro"))
                      ],),

                      SizedBox(height: 5.0,),

                      Row(
                        children: <Widget>[
                          SizedBox(width: 4.0,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              
                            ),
                            width: 80.0,
                            child: Image.asset('images/j3.gif',fit: BoxFit.cover,),
                          ),

                          SizedBox(width: 5.0,),

                          Column(
                           
                            children: <Widget>[
                            Text("Second Investment Group",style: TextStyle(fontFamily: 'Maven Pro',fontWeight:FontWeight.normal,letterSpacing: 2.0,color: Colors.black),),
                          
                          Row(children: <Widget>[
                               Text('Skilled  ',style: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,color: Colors.grey[400]),),

                            SizedBox(width: 165.0,)
                          ],),

                          Row(children: <Widget>[

                          SizedBox(height: 10.0,),

                          ],),

                          Row(children: <Widget>[
                            prefix0.Icon(Icons.person_pin_circle,color:Colors.red),
                            SizedBox(width: 4.0,),
                            

                            FutureBuilder(
                        future: getData(),
                        builder: (context,snapshot)
                        {
                          if(snapshot.connectionState==ConnectionState.waiting){
                               return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       
                          }
                          else{
                            return Text(snapshot.data[0].data['Alpha member count'],style: TextStyle(fontFamily: 'Maven Pro'),);
                          }
                        },
                      ),

                            SizedBox(width: 170.0,),
                          ],),

                          Row(mainAxisAlignment: prefix0.MainAxisAlignment.end,
                            children: <Widget>[
                                  

                             InkWell(
                               onTap: (){
                                 dialog('Alpha');
                               },
                               child: Text('Tap for info',style: TextStyle(fontSize: 10.0,color: Colors.grey[400],fontWeight: prefix0.FontWeight.bold),))
                     
                            ],
                          )
                          ],)
                          
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        SizedBox(width: 4.0,),
                        Text('Chroma',style:TextStyle(fontWeight:FontWeight.bold,letterSpacing: 2.0,color: Colors.black,fontFamily: "Maven Pro"))
                      ],),

                      SizedBox(height: 5.0,),

                      Row(
                        children: <Widget>[
                          SizedBox(width: 4.0,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              
                            ),
                            width: 80.0,
                            child: Image.asset('images/j4.gif',fit: BoxFit.cover,),
                          ),

                          SizedBox(width: 5.0,),

                          Column(
                           
                            children: <Widget>[
                            Text("Third Investment Group",style: TextStyle(fontFamily: 'Maven Pro',fontWeight:FontWeight.normal,letterSpacing: 2.0,color: Colors.black),),
                          
                          Row(children: <Widget>[
                               Text('Professionals',style: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,color: Colors.grey[400]),),

                            SizedBox(width: 115.0,)
                          ],),

                          Row(children: <Widget>[

                          SizedBox(height: 10.0,),

                          ],),

                          Row(children: <Widget>[
                            prefix0.Icon(Icons.person_pin_circle,color:Colors.red),
                            SizedBox(width: 4.0,),
                          

                          FutureBuilder(
                        future: getData(),
                        builder: (context,snapshot)
                        {
                          if(snapshot.connectionState==ConnectionState.waiting){
                               return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       
                          }
                          else{
                            return Text(snapshot.data[0].data['Chroma member count'],style: TextStyle(fontFamily: 'Maven Pro'),);
                          }
                        },
                      ),

                            SizedBox(width: 150.0,),
                          ],),

                          Row(mainAxisAlignment: prefix0.MainAxisAlignment.end,
                            children: <Widget>[
                                  

                             InkWell(
                               onTap: (){
                                 dialog('Chroma');
                               },
                               child: Text('Tap for info',style: TextStyle(fontSize: 10.0,color: Colors.grey[400],fontWeight: prefix0.FontWeight.bold),))
                     
                            ],
                          )
                          ],)
                          
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        SizedBox(width: 4.0,),
                        Text('Titan',style:TextStyle(fontWeight:FontWeight.bold,letterSpacing: 2.0,color: Colors.black,fontFamily: "Maven Pro"))
                      ],),

                      SizedBox(height: 5.0,),

                      Row(
                        children: <Widget>[
                          SizedBox(width: 4.0,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              
                            ),
                            width: 80.0,
                            child: Image.asset('images/j5.gif',fit: BoxFit.cover,),
                          ),

                          SizedBox(width: 5.0,),

                          Column(
                           
                            children: <Widget>[
                            Text("Fourth Investment Group",style: TextStyle(fontFamily: 'Maven Pro',fontWeight:FontWeight.normal,letterSpacing: 2.0,color: Colors.black),),
                          
                          Row(children: <Widget>[
                               Text('Special Program',style: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,color: Colors.grey[400]),),

                            SizedBox(width: 115.0,)
                          ],),

                          Row(children: <Widget>[

                          SizedBox(height: 10.0,),

                          ],),

                          Row(children: <Widget>[
                            prefix0.Icon(Icons.person_pin_circle,color:Colors.red),
                            SizedBox(width: 4.0,),
                          
                          FutureBuilder(
                        future: getData(),
                        builder: (context,snapshot)
                        {
                          if(snapshot.connectionState==ConnectionState.waiting){
                               return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       
                          }
                          else{
                            return Text(snapshot.data[0].data['Titan member count'],style: TextStyle(fontFamily: 'Maven Pro'),);
                          }
                        },
                      ),

                            SizedBox(width: 160.0,),
                          ],),

                          Row(mainAxisAlignment: prefix0.MainAxisAlignment.end,
                            children: <Widget>[
                                  

                             InkWell(
                               onTap: (){
                                 dialog('Titan');
                               },
                               child: Text('Tap for info',style: TextStyle(fontSize: 10.0,color: Colors.grey[400],fontWeight: prefix0.FontWeight.bold),))
                     
                            ],
                          )
                          ],)
                          
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),


            Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
              children: <Widget>[
                InkWell(

                  onTap: (){


                    
                 showModalBottomSheet(
                   context: (context),
                   builder: (builder){
                     return Container(
                       color: Color(0xFFF4F4F4),
                       child: ListView(
                         children: <Widget>[
                           SizedBox(
                             height: 5.0,
                           ),
                           Row(
                             mainAxisAlignment: prefix0.MainAxisAlignment.center,
                             children: <Widget>[
                               Text('Fill Details',style: TextStyle(fontFamily: 'Maven Pro',fontWeight: prefix0.FontWeight.bold,letterSpacing: 3.0)),
                           ],),
                           SizedBox(height: 20.0,),

                           Row(children: <Widget>[
                             Text('  Account Number',style: TextStyle(fontFamily: 'Maven Pro',letterSpacing: 2.0)),
                         
                           ],),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: TextField(
                               controller:accno ,
                              
                               decoration: prefix0.InputDecoration(
                                 hintText: "  recievers account number",
                                 hintStyle: TextStyle(fontSize: 12.0)
                               )
                             ),
                           ),

                             Row(children: <Widget>[
                             Text('  IFSC code',style: TextStyle(fontFamily: 'Maven Pro',letterSpacing: 2.0)),
                         
                           ],),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: TextField(
                               controller:ifsc ,
                              
                               decoration: prefix0.InputDecoration(
                                 hintText: "  ifsc code of bank account",
                                 hintStyle: TextStyle(fontSize: 12.0)
                               )
                             ),
                           ),

                             Row(children: <Widget>[
                             Text('  Name',style: TextStyle(fontFamily: 'Maven Pro',letterSpacing: 2.0)),
                         
                           ],),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: TextField(
                               controller:name ,
                              
                               decoration: prefix0.InputDecoration(
                                 hintText: "  name as listed on account",
                                 hintStyle: TextStyle(fontSize: 12.0)
                               )
                             ),
                           ),
                           prefix0.SizedBox(height: 15.0,),

                           FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                     
                        }
                        else{
                          return Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
                             children: <Widget>[
                               FloatingActionButton.extended(
                                 onPressed: (){

                                    if(int.parse(snapshot.data[0].data['coins'])==0){

                                     prefix0.showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(

                                          child: Container(
                                          height: 300.0,
                                          width: 300.0,
                                          decoration: prefix0.BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Error',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.red,decoration: prefix0.TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                              Text('No coins present',style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration: prefix0.TextDecoration.none,color: Colors.grey))
,
                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
                                              children: <Widget>[
                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  Withdrawal error  ",style: prefix0.TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),
                                              ],)

                                          
                                          
                                          
                                          ],),
                                          
                                        ),
                                                                        ),
                                      );
                                    }
                                  );


                                   }

                                  else if(accno.text.isNotEmpty&&ifsc.text.isNotEmpty&&name.text.isNotEmpty && int.parse(snapshot.data[0].data['coins'])!=0 ){
                                  prefix0.showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(
                                            child: Container(
                                          height: 300.0,
                                          width: 300.0,
                                          decoration: prefix0.BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Details submitted successfully!!!',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.green,decoration: prefix0.TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                              Text('you will be notified within 24hrs',style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration: prefix0.TextDecoration.none,color: Colors.grey))
,
                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
                                              children: <Widget>[
                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  Pleasure to have you  ",style: prefix0.TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),
                                              ],),

                                            
                                          
                                          ],),
                                          
                                        ),
                                                                        ),
                                      );
                                    }
                                  );

                                  databaseReference.child(widget.user.uid+'withdraw').set({'accno':accno.text,'ifsc':ifsc.text,'name':name.text});
                                          

                                  
                                   }

                                   else{

                                     prefix0.showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(
                                            child: Container(
                                          height: 300.0,
                                          width: 300.0,
                                          decoration: prefix0.BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Error',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.red,decoration: prefix0.TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                              Text('fill valid details',style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration: prefix0.TextDecoration.none,color: Colors.grey))
,
                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
                                              children: <Widget>[
                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  Please try again  ",style: prefix0.TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),
                                              ],)

                                          
                                          
                                          
                                          ],),
                                          
                                        ),
                                                                        ),
                                      );
                                    }
                                  );


                                   }
                                 },
                                 heroTag: 'tag',
                                 label: Text('Withdraw',style:TextStyle(fontFamily: 'Maven Pro')),
                               ),
                             ],
                           ); }
                      },
                    ),

                           
                         ],
                       ),
                     );
                   }
                 );
                  },
                                child: Container(
                    height: 30.0,
                    width: 150.0,
                    decoration: prefix0.BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: prefix0.BorderRadius.circular(8.0),
                      
                    ),
                    child: Center(child: Text('Withdraw Coins',style: TextStyle(fontFamily: 'Maven Pro' ,color:Colors.blue),)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,)
           
           
           
           
           

             

             

             
            
  
            ],
          ),
        ),
      
    );
  }


}