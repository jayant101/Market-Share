import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';



class Token extends StatefulWidget{
  var user;
  Token({this.user});
  @override 
  TokenState createState()=> TokenState();
}

class TokenState extends State<Token>{

  TextEditingController transactionId= TextEditingController();
  TextEditingController phoneno= TextEditingController();
  
final databaseReference = FirebaseDatabase.instance.reference();

  getData() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection(widget.user.uid).getDocuments();

    return qn.documents;
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor:  Color(0xFFF4F4F4),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height:20.0),
            Padding(
              padding:
              const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
              child: Text(
                'Add Coins',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: <Widget>[



                       FutureBuilder(
                                future: getData(),
                                builder: (context,snapshot)
                                {
                                  if(snapshot.connectionState==ConnectionState.waiting){
                                      return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                              
                                  }
                                  else{
                                    
                                    return Container(
                        margin: EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Personal Information',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14.0),
                              ),
                            ),
                            Card(
                              child: Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(snapshot.data[0].data['name'],style: TextStyle(color: Colors.grey[400],fontFamily: 'Maven Pro'),),
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                  widget.user.email,style: TextStyle(color: Colors.grey[400],fontFamily: 'Maven Pro'),),
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('Current Level',style: TextStyle(color: Colors.grey[400],fontFamily: 'Maven Pro'),),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(right: 4.0),
                                                    child: Text(snapshot.data[0].data['current level'],style: TextStyle(color: Colors.black,fontFamily: 'Maven Pro'),),
                                                  ),
                                                  
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('Coins Present',style: TextStyle(color: Colors.grey[400],fontFamily: 'Maven Pro'),),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                 Text('Coins '+snapshot.data[0].data['coins'],style: TextStyle(color: Colors.black,fontFamily: 'Maven Pro'),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text('Team Leader',style: TextStyle(color: Colors.grey[400],fontFamily: 'Maven Pro'),),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Text(snapshot.data[0].data['leader'],style: TextStyle(color: Colors.black,fontFamily: 'Maven Pro'),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                     
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Card(
                              child:  ExpansionTile(
                                        title: Text('Investments',style: TextStyle(color: Colors.grey[400],fontFamily: 'Maven Pro'),),
                                        children: <Widget>[

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,

                                           children: <Widget>[
                                            
                                              Text('No. of Investments  ',style: TextStyle(fontSize: 10.0,color: Colors.grey,fontFamily: 'Maven Pro'),),
                                          
                                           ],
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.accessibility_new,size: 20.0,),
                                            title: Text('Cypher',style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                            trailing: Text(snapshot.data[0].data['Cypher Investment no'],style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                            
                                          
                                          ),

                                          ListTile(
                                            leading: Icon(Icons.accessibility_new,size: 20.0,),
                                            trailing:  Text(snapshot.data[0].data['Alpha Investment no'],style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                              title:Text('Alpha',style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                           
                                              
                                              ),

                                          ListTile(
                                            leading: Icon(Icons.accessibility_new,size: 20.0,),
                                            trailing:  Text(snapshot.data[0].data['Chroma Investment no'],style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                              title:Text('Chroma',style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                           
                                             
                                             ),

                                          ListTile(
                                            leading: Icon(Icons.accessibility_new,size: 20.0,),
                                            trailing:  Text(snapshot.data[0].data['Titan Investment no'],style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                              title:Text('Alpha',style: TextStyle(fontSize: 12.0,color: Colors.black,fontFamily: 'Maven Pro'),),
                                           
                                             
                                             ),
                                        ],
                                      ),
                            ),
                          ],
                        ),
                      );
                                    
                                  }
                                },
                              ),
                    
               
                    
                       

                       _getBankCardSection(),

                       Card(
                         child: Container(
                           padding: EdgeInsets.all(10.0),
                           child: Column(children: <Widget>[

                              Text('Number'),

                             TextField(
                               
                               controller: phoneno,
                               decoration: InputDecoration(
                               hintText: 'Phone number from which payment has been done',
                               hintStyle: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,)
                             )),

                            SizedBox(height: 20.0,),


                             Text('TransactionId'),

                             TextField(
                               
                               controller: transactionId,
                               decoration: InputDecoration(
                               hintText: 'transactionId of the payment',
                               hintStyle: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,)
                             )),

                            SizedBox(height: 10.0,),

                            InkWell(

                              onTap: (){

                                if(transactionId.text.endsWith(' ') || phoneno.text.length != 10)

                                {
                                  print('nothing');
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
                                              Text('Invalid Value',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.red,decoration:  TextDecoration.none),),
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

                               else if(transactionId.text.isEmpty || phoneno.text.isEmpty || phoneno.text.length != 10){
                                  print('empty');
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
                                              Text('Invalid Value',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.red,decoration:  TextDecoration.none),),
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

                                else{

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
                                              Text('TransactionId submitted successfully!!!',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.green,decoration:  TextDecoration.none),),
                                            ],),

                                            SizedBox(height: 20.0,),

                                            Text('you will be notified within 24hrs after the successful verification of TransactionId',textAlign: TextAlign.center,style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration:  TextDecoration.none,color: Colors.grey))
,
                                            SizedBox(height: 80.0,),

                                            Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height: 1.0,
                                                width: 30.0,
                                                color: Colors.grey,
                                              ),

                                              Text("  Coins will be available to you soon  ",style: TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

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

                                databaseReference.child(widget.user.uid+'  realpayment').push().set({'email':widget.user.email,'phoneno':phoneno.text});
                                }
                              },
                                child: Container(
                                  height: 30.0,
                                  width: 100.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green[400])

                                ),
                                child: Center(
                                child: Text('Confirm',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.green[400],),
                              ),
                                ),
                           
                            ))],)
                         ),
                       )

                       

                  ]
                ),
              ),
            ),

            


            
          ],
        ),
      ),
    );
  }

  


  Widget _getBankCardSection() {
    return Container(
//      color: Colors.yellow,
      margin: EdgeInsets.all(16.0),
//      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Select Coins',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Card(
            margin: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11.0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ListView(
                  
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                 
                   children: <Widget>[
                     _getBankCard(1),
                     _getBankCard(2),
                     _getBankCard(3),
                     _getBankCard(4),
                   ],
                  ),
            ),
          ),
     
        ],
      ),
    );
  }
    int selectedCardIndex = 0;

  Widget _getBankCard(int index) {

    if (index == 1){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('₹50'),
          )),
          Radio(
            activeColor: Color(0xFF65D5E3),
            value: index,
            groupValue: selectedCardIndex,
            onChanged: (value) {
               selectedCardIndex = value;
               
              setState(() {
                
              });
            },
          )
        ],
      ),
    );}

    if(index==2)
    {

      return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('₹100'),
          )),
          Radio(
            activeColor: Color(0xFF65D5E3),
            value: index,
            groupValue: selectedCardIndex,
            onChanged: (value) {
              selectedCardIndex = value;
              setState(() {});
            },
          )
        ],
      ),
    );
    }

    if (index == 3){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('₹500'),
          )),
          Radio(
            activeColor: Color(0xFF65D5E3),
            value: index,
            groupValue: selectedCardIndex,
            onChanged: (value) {
              selectedCardIndex = value;
              setState(() {});
            },
          )
        ],
      ),
    );}

    if (index == 4){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('₹1000'),
              )),
              Radio(
                activeColor: Color(0xFF65D5E3),
                value: index,
                groupValue: selectedCardIndex,
                onChanged: (value) {
                  selectedCardIndex = value;
                  setState(() {
                    
                    print(selectedCardIndex);
                  });
                },
              ),
            ],
          ),

            FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                     
                        }
                        else{
                          return 
          FloatingActionButton.extended(
            heroTag: 'btn',
            elevation: 6.0,
            label: Text('pay'),
            onPressed: (){
              if(selectedCardIndex == 4){
                print('pay');

                databaseReference.child(widget.user.uid+' payment').push().set({'email':widget.user.email});
                               


                
                launch(snapshot.data[0].data['1000']);
              }

               if(selectedCardIndex == 3){
                print('pay3');
                databaseReference.child(widget.user.uid+' payment').push().set({'email':widget.user.email});
              
                launch(snapshot.data[0].data['500']);
              }

               if(selectedCardIndex == 2){
                print('pay2');
               databaseReference.child(widget.user.uid+' payment').push().set({'email':widget.user.email});
                 launch(snapshot.data[0].data['100']);
              }

               if(selectedCardIndex == 1){
                print('pay1');
                databaseReference.child(widget.user.uid+' payment').push().set({'email':widget.user.email});
                
                launch(snapshot.data[0].data['50']);
                
              }
            },
          ); }
                      },
                    ),
                    SizedBox(height: 10.0,),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                      Container(
                        height: 1.0,
                        width: 18.0,
                        color: Colors.grey,
                      ),

                      Text('  Fill TransactionId  ',style: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,color: Colors.green[400]),),
                      Container(
                        height: 1.0,
                        width: 18.0,
                        color: Colors.grey,
                      ),
                    ],),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                      Container(
                        height: 1.0,
                        width: 18.0,
                        color: Colors.grey,
                      ),

                      Text('  after Successful transaction below  ',style: TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,color: Colors.green[400]),),
                      Container(
                        height: 1.0,
                        width: 18.0,
                        color: Colors.grey,
                      ),
                    ],)


        ],
      ),
    );
    }

    
  }

}

