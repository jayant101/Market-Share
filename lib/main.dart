import 'package:flutter/material.dart';
import 'package:marketshare/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './first.dart' as first;
import './second.dart' as second;
import './third.dart' as third;
import './myAcc.dart';
import './token.dart';

void main(){

  runApp(
    MaterialApp(
      home:LoginPage(),
      title: 'Market Share',
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        'homepage':(context)=>new Home()
      },
    )
  );
}


class Home extends StatefulWidget{
  var user;
  Home({this.user});
  
@override
HomeState createState() => HomeState();

}
class HomeState extends State<Home>{
  var  i =10;

  getData() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection(widget.user.uid).getDocuments();

    return qn.documents;
  }


  final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();
 
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
          child: Scaffold(


             drawer:Drawer(
               child: ListView(
                children: <Widget>[
                  
                 Container(
                   height: 210.0,
                   
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[ Colors.amber[200],Colors.orange,Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                ),
              
                   child: DrawerHeader(
                       child:FutureBuilder(
                     future: getData(),
                     builder: (context,snapshot){

                       if(snapshot.connectionState==ConnectionState.waiting){
                         return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                       }

                       else 
                       {
                         return ListView(children: <Widget>[
                         SizedBox(height: 8.0,),
                         Row(mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Container(
                               height: 80.0,
                               width: 80.0,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(40.0),
                                 border: Border.all()
                               ),
                               child: Icon(Icons.account_circle,color: Colors.black,),
                             ),
                           ],
                         ),

                         SizedBox(height: 20.0,),
                         Text(snapshot.data[0].data['name'],style: TextStyle(fontFamily: 'WorkSansSemiBold',fontSize: 12.0),),
                         Text(widget.user.email,style: TextStyle(fontFamily: 'WorkSansSemiBold',fontSize: 12.0),),

                     Text(snapshot.data[0].data['drawer space'],style: TextStyle(fontFamily: 'Maven Pro',fontSize: 15.0)),
                       ],);
                       }

                     }, 
                       
                       
                       
                       
                     ),
                   ),
                 ),



                  FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return  ListTile(
                    title:Text('        Loading',style: TextStyle(fontFamily: 'Maven Pro',)),
                    
                    
                    
                    
                  );  }
                        else{
                          return ListTile(
                    title:Text('Current Level',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                    
                    trailing:

                    Text(snapshot.data[0].data['current level'],style: TextStyle(fontFamily: 'Maven Pro'),),
                    
                    
                    
                    
                  );  }
                      },
                    ),

















                  

                    FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return ListTile(
                    title:Text('        Loading',style: TextStyle(fontFamily: 'Maven Pro',)),
                    
                    
                    
                    
                  );  }
                        else{
                          return ListTile(
                    title:Text('Team Count',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                    
                    trailing:

                    Text(snapshot.data[0].data['Team Count'],style: TextStyle(fontFamily: 'Maven Pro'),)
                    
                    
                    
                    
                  );  }
                      },
                    ),
                 
                  
                  

                Hero(
                  tag: 'hello',
                                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                                    child: ListTile(
                      leading:Icon(Icons.home,color: Colors.black,),
                      title: Text('Home',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAcc(user:widget.user)));
                    
                   
                    
                  },
                                  child: ListTile(
                    leading:Icon(Icons.account_box,color: Colors.black,),
                    title: Text('My Account',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                  ),
                ),


                InkWell(
                  onTap: (){
                    
                    showDialog(
                      context: (context),
                      builder: (builder){
                        return AlertDialog(
                          title: Text('Not Available In India',style: TextStyle(color: Colors.red,fontSize: 20.0,fontWeight: FontWeight.w400),),
                        );
                      }
                    );
                  },
                                  child: ListTile(
                    
                    title: Text('Green Card Policy',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                    leading:Icon(Icons.insert_chart,color: Colors.black,)
                  ),
                ),

                Divider(),

                InkWell(
                  onTap: (){},
                                  child: ListTile(
                    title: Text('SignOut',style: TextStyle(fontFamily: 'WorkSansSemiBold',)),
                    leading:Icon(Icons.settings_power,color: Colors.black,),
                  ),
                ),

               
                ],
              ),
             ),
        appBar: AppBar(

          actions: <Widget>[
            
            
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Token(user: widget.user,)));
              },
                          child: Container(
                margin: EdgeInsets.only(right: 12.0),
                child: Icon(Icons.shopping_cart)),
            ),
            
          ],
          iconTheme: IconThemeData(color: Colors.black),
        
          title: Text('MarketShare',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: TabBar(
            
            labelColor: Colors.black,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'home',
                
              ),

              Tab(
                text: 'cart',
              ),

              Tab(
                text: 'invite',
              ),
            ],
          ),
          
        ),

        

        body:TabBarView(
         
          children: <Widget>[
            first.First(user: widget.user,),
            second.Second(),
            third.Third(user:widget.user),

          ],
        ),
      ),
    );
  }
}