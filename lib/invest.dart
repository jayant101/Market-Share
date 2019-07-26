import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';


class Invest extends StatefulWidget{
  var user;
  String cypher;
  Invest({this.user,this.cypher});

  

  @override 
  InvestState createState()=> InvestState();
}

class InvestState extends State<Invest>{


  TextEditingController  name =TextEditingController();
  
  TextEditingController  leader =TextEditingController();
  TextEditingController  pastinvestment =TextEditingController();
  TextEditingController  number =TextEditingController();
  TextEditingController  dob =TextEditingController();
  TextEditingController  pincode =TextEditingController();

  getData() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection(widget.user.uid).getDocuments();

    return qn.documents;
  }

  var _formKey = GlobalKey<FormState>();

  
final databaseReference = FirebaseDatabase.instance.reference();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('Invest',style: TextStyle(color: Colors.black,letterSpacing: 2.0,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),

      body: new Form(
        key: _formKey,
              child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0,),

           Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text('    Name',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: 'Maven Pro') ,),
              
              Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  controller: name,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  Name on Account',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                         
                       ),
                     ),
              ),
              SizedBox(height:20.0),

                   Text('    Leader Name',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  controller: leader,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  Optional',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),
              ),

              SizedBox(height:20.0),

                   Text('    Past Investment With us',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  controller: pastinvestment,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  Yes or No',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),

                Text('    Mobile Number',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  controller: number,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  example +919876543210',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),


                Text('    Date of Birth',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                   controller: dob,
                   validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                  
                       decoration: InputDecoration(
                         hintText: '  28/07/2000',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),

                Text('    Country',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  "India"',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),

                Text('    State',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  example "Uttar Pradesh"',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),

                Text('    City',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  example "Mumbai"',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),

                Text('    Pincode',style:TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0,fontFamily: "Maven Pro") ,),
              
               Container(

                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  controller: pincode,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'please enter the value';
                    }
                  },
                   
                  
                       decoration: InputDecoration(
                         hintText: '  example 462001',
                         hintStyle: TextStyle(color: Colors.grey[400],fontSize: 12.0)
                       ),
                     ),

               
              ),

              SizedBox(height:20.0),



              
              
              
              
              
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  height: 1.0,
                  width: 30.0,
                  color: Colors.grey,
                ),

                Text(' ${widget.cypher} ',style: TextStyle(color: Colors.green,letterSpacing: 2.0,fontWeight: FontWeight.bold),),

                Container(
                  height: 1.0,
                  width: 30.0,
                  color: Colors.grey,
                ),

               

              ],
              ),
               SizedBox(height: 20.0,),





                FutureBuilder(
                                  future: getData(),
                                  builder: (context,snapshot)
                                  {
                                    if(snapshot.connectionState==ConnectionState.waiting){
                                        return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                                
                                    }
                                    else{
                                      return Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   FloatingActionButton.extended(

                     onPressed: (){
                     
                      
                      if( 
                         (int.parse(snapshot.data[0].data['coins']) ==0 )||
                         
                         
                         (int.parse(snapshot.data[0].data['coins']) < 100 && widget.cypher=='Plan worth 100 Coins') ||
                       (
                         (int.parse(snapshot.data[0].data['coins']) < 500 && widget.cypher=='Plan worth 500 Coins')
                       )  ||
                       
                       ((int.parse(snapshot.data[0].data['coins']) < 1000 && widget.cypher=='Plan worth 1000 Coins'))
                       
                       )
                        

                       {
                          showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(
                                            child: Container(
                                          height: 300.0,
                                          width: 300.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Invalid Coins Present',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.red,decoration:  TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                         //     Text('  you will be notified within 24hrs after the successful   verification of TransactionId',textAlign: TextAlign.center,style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration:  TextDecoration.none,color: Colors.grey))

                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  try again  ",style: TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                Container(
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

                       else if(_formKey.currentState.validate()) {
                          
                        {

                          showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(
                                            child: Container(
                                          height: 300.0,
                                          width: 300.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Investment successful!!!',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.green,decoration:  TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                              Text('you will be notified within 24hrs',textAlign: TextAlign.center,style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration:  TextDecoration.none,color: Colors.grey))
,
                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  plan will be updated soon in your profile  ",style: TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                Container(
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


                          databaseReference.child(widget.user.uid).push().set({'plan':widget.cypher,'name':name.text,'leader':leader.text,'pastinvestment':pastinvestment.text,'number':number.text
                          ,'dob':dob.text,'pincode':pincode.text
                          
                          });
                         


                       }
                       }



                               
                     },


                     elevation: 6.0,
                     label: Text('Pay',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,fontFamily: "WorkSansBold"),),
                     backgroundColor: Colors.greenAccent,
                   ),
                 ],
               ); }
                                  },
                                ),

               

               SizedBox(height: 20.0,),
             ],
           )
          ],
        ),
      ),
    );
  }
}